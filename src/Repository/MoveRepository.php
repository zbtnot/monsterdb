<?php

namespace zbtnot\MonsterDb\Repository;

use zbtnot\MonsterDb\Model\Move;
use zbtnot\MonsterDb\Model\Requisite;
use zbtnot\MonsterDb\Model\RequisiteType;
use zbtnot\MonsterDb\Model\Type;

class MoveRepository extends Repository
{
    /** @return Move[] */
    public function getMovesByMonsterId(int $monsterId): array
    {
        $sql = <<<SQL
            SELECT
                move.name,
                move.pp,
                move.power,
                move.accuracy,
                type.name as typeName,
                (
                    move.type_id IN (SELECT type_id FROM monster_type WHERE monster_type.monster_id = :id)
                    AND move.power IS NOT NULL
                ) AS 'STAB',
                monster_move.how as 'requisiteHow',
                monster_move.description as 'requisiteDescription'
            FROM monster_move
            INNER JOIN move on monster_move.move_id = move.id
            INNER JOIN type on move.type_id = type.id
            WHERE monster_move.monster_id = :id
        SQL;

        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $monsterId]);

        $moves = [];
        while (($move = $statement->fetch(\PDO::FETCH_ASSOC)) !== false) {
            $type = (new Type())->setName($move['typeName']);

            $requisiteHow = RequisiteType::resolve($move['requisiteHow']);
            $requisite = (new Requisite())
                ->setType($requisiteHow)
                ->setContents($move['requisiteDescription']);

            $moves[] = (new Move())
                ->setName($move['name'])
                ->setPp($move['pp'])
                ->setPower($move['power'])
                ->setAccuracy($move['accuracy'])
                ->setType($type)
                ->setRequisite($requisite)
            ;
        }

        return $moves;
    }
}
