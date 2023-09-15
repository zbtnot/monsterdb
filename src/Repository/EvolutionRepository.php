<?php

namespace zbtnot\MonsterDb\Repository;

use zbtnot\MonsterDb\Model\Item;
use zbtnot\MonsterDb\Model\Requisite;
use zbtnot\MonsterDb\Model\RequisiteType;

class EvolutionRepository extends Repository
{
    public function fetchRequisiteByEvolutionId(int $id): Requisite
    {
        $sql = <<<SQL
            SELECT 
                how,
                level,
                item.name AS 'itemName',
                item.description as 'itemDescription'
            FROM evolution_how
            LEFT JOIN item ON evolution_how.item_id = item.id
            WHERE evolution_how.id = :id;
        SQL;
        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $id]);

        $result = $statement->fetch(\PDO::FETCH_ASSOC);
        $evolutionType = RequisiteType::resolve($result['how']);
        $contents = match ($evolutionType) {
            RequisiteType::LEVEL_UP => $result['level'],
            RequisiteType::ITEM => (new Item())
                ->setName($result['itemName'])
                ->setDescription($result['itemDescription']),
            RequisiteType::TRADE => null,
        };

        return (new Requisite())
            ->setType($evolutionType)
            ->setContents($contents);
    }
}
