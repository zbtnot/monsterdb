<?php

namespace zbtnot\MonsterDb\Repository;

class CryRepository extends Repository
{
    public function fetchCryByMonsterId(int $monsterId): string
    {
        $sql = <<<SQL
            SELECT
                path
            FROM cry
            WHERE cry.monster_id = :id
        SQL;

        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $monsterId]);

        return $statement->fetchColumn();
    }
}
