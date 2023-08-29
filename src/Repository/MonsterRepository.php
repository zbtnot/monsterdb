<?php

namespace zbtnot\MonsterDb\Repository;

use zbtnot\MonsterDb\Model\Monster;

class MonsterRepository extends Repository
{
    /** @return Monster[] */
    public function fetchMonsters(int $offset = 0, int $count = 25): array
    {
        $sql = <<<SQL
            SELECT
                id,
                dex_id AS dexId,
                name
            FROM monster
            LIMIT :offset, :count
        SQL;

        $statement = $this->pdo->prepare($sql);
        $statement->execute([':offset' => $offset, ':count' => $count]);

        return $statement->fetchAll(\PDO::FETCH_CLASS, Monster::class);
    }

    public function fetchMonsterById(int $id): ?Monster
    {
        $sql = <<<SQL
            SELECT
                id,
                dex_id AS dexId,
                name
            FROM monster
            WHERE dex_id = :id
        SQL;
        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $id]);

        return $statement->fetchObject(Monster::class) ?: null;
    }
}
