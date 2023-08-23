<?php

namespace zbtnot\MonsterDb\Repository;

use zbtnot\MonsterDb\Model\Monster;

class MonsterRepository extends Repository
{
    /**
     * @return Monster[]
     */
    public function fetchMonsters(int $offset = 0, int $count = 25): array
    {
        $sql = <<<SQL
            SELECT
                m.dex_id AS dexId,
                m.name,
                i.path AS illustrationPath
            FROM monster m
            LEFT JOIN illustration i on m.id = i.monster_id
            LIMIT :offset, :count
        SQL;

        $statement = $this->pdo->prepare($sql);
        $statement->execute([':offset' => $offset, ':count' => $count]);

        return $statement->fetchAll(\PDO::FETCH_CLASS, Monster::class);
    }
}
