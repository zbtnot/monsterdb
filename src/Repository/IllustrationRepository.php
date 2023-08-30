<?php

namespace zbtnot\MonsterDb\Repository;

class IllustrationRepository extends Repository
{
    public function fetchIllustrationsByMonsterIds(array $monsterIds): array
    {
        $sql = <<<SQL
            SELECT
                path
            FROM illustration
            WHERE illustration.monster_id = :id
        SQL;

        $illustrations = [];
        $statement = $this->pdo->prepare($sql);
        foreach ($monsterIds as $monsterId) {
            $statement->execute([':id' => $monsterId]);
            $illustrations[$monsterId] = $statement->fetchColumn();
        }

        return $illustrations;
    }

    public function fetchIllustrationByMonsterId(int $monsterId): string
    {
        $sql = <<<SQL
            SELECT
                path
            FROM illustration
            WHERE illustration.monster_id = :id
        SQL;

        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $monsterId]);

        return $statement->fetchColumn();
    }
}
