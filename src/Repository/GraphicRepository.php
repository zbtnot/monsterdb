<?php

namespace zbtnot\MonsterDb\Repository;

use zbtnot\MonsterDb\Model\Animation;

class GraphicRepository extends Repository
{
    /** @return array<int, string> */
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

    public function fetchSpritesByMonsterIds(array $monsterIds): array
    {
        $sql = <<<SQL
            SELECT
                path
            FROM sprite
            WHERE sprite.monster_id = :id
        SQL;

        $sprites = [];
        $statement = $this->pdo->prepare($sql);
        foreach ($monsterIds as $monsterId) {
            $statement->execute([':id' => $monsterId]);
            $sprites[$monsterId] = $statement->fetchColumn();
        }

        return $sprites;
    }

    public function fetchSpriteByMonsterId(int $monsterId): string
    {
        $sql = <<<SQL
            SELECT
                path
            FROM sprite
            WHERE sprite.monster_id = :id
        SQL;

        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $monsterId]);

        return $statement->fetchColumn();
    }

    /** @return Animation[] */
    public function fetchAnimationsByMoveId(int $moveId): array
    {
        $sql = <<<SQL
            SELECT
                path,
                mimeType
            FROM move_animation
            WHERE move_id = :id
        SQL;

        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $moveId]);
        $rows = $statement->fetchAll(\PDO::FETCH_ASSOC);

        $animationMapper = fn(array $row) => (new Animation())
            ->setPath($row['path'])
            ->setMimeType($row['mimeType']);

        return array_map($animationMapper, $rows);
    }
}
