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
                move.id AS moveId,
                move.name,
                move.pp,
                move.power,
                move.accuracy,
                type.name AS typeName,
                (
                    move.type_id IN (SELECT type_id FROM monster_type WHERE monster_type.monster_id = :id)
                    AND move.power IS NOT NULL
                ) AS 'STAB',
                monster_move.how AS 'requisiteHow',
                monster_move.description AS 'requisiteDescription'
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
                ->setId($move['moveId'])
                ->setName($move['name'])
                ->setPp($move['pp'])
                ->setPower($move['power'])
                ->setAccuracy($move['accuracy'])
                ->setType($type)
                ->setRequisite($requisite);
        }

        return $moves;
    }

    /** @return Move[] */
    public function getMoves(?int $limit, ?int $offset): array
    {
        $sql = <<<SQL
            SELECT
                move.id AS 'moveId',
                move.name AS 'name',
                pp,
                power,
                accuracy,
                type.name AS 'typeName'
            FROM move
            INNER JOIN type ON move.type_id = type.id
        SQL;
        $sql .= $this->generatePaginationString($limit, $offset);
        $params = $this->generatePaginationParameters($limit, $offset);
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute($params);

        $moves = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        return array_map(function (array $move) {
            $type = (new Type())->setName($move['typeName']);

            return (new Move())
                ->setId($move['moveId'])
                ->setName($move['name'])
                ->setPp($move['pp'])
                ->setPower($move['power'])
                ->setAccuracy($move['accuracy'])
                ->setType($type);
        }, $moves);
    }

    public function getMoveById(int $id): Move
    {
        $sql = <<<SQL
            SELECT
                move.id AS 'moveId',
                move.name AS 'name',
                pp,
                power,
                accuracy,
                type.name AS 'typeName'
            FROM move
            INNER JOIN type ON move.type_id = type.id
            WHERE move.id = :id
        SQL;
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute(['id' => $id]);

        $move = $stmt->fetch(\PDO::FETCH_ASSOC);
        $type = (new Type())->setName($move['typeName']);
        return (new Move())
            ->setId($move['moveId'])
            ->setName($move['name'])
            ->setPp($move['pp'])
            ->setPower($move['power'])
            ->setAccuracy($move['accuracy'])
            ->setType($type);
    }


    public function fetchMonsterIdsByMoveId(int $moveId): array
    {
        $sql = <<<SQL
            SELECT 
                monster_id 
            FROM monster_move WHERE move_id = :id
        SQL;
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute(['id' => $moveId]);
        $rows = $stmt->fetchAll();

        return array_column($rows, 'monster_id');
    }
}
