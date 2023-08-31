<?php

namespace zbtnot\MonsterDb\Repository;

use JetBrains\PhpStorm\ArrayShape;
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

    /** @return array<int, array<Monster>> */
    public function fetchMonstersFromEvolutionTreeByMonsterId(int $id): array
    {
        $sql = <<<SQL
            WITH RECURSIVE evolution_tree AS (
                SELECT from_monster_id, to_monster_id
                FROM evolution WHERE from_monster_id = :id
                UNION
                SELECT e.from_monster_id, e.to_monster_id
                FROM evolution e
                INNER JOIN evolution_tree et ON e.from_monster_id = et.to_monster_id
            )
            SELECT
                evolution_tree.to_monster_id AS id,
                monster.dex_id AS dexId,
                monster.name,
                evolution_tree.from_monster_id
            FROM evolution_tree
            INNER JOIN monster ON evolution_tree.to_monster_id = monster.id
            ORDER BY from_monster_id;
        SQL;
        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $id]);

        $monsters = [];
        while (($monster = $statement->fetch(\PDO::FETCH_ASSOC)) !== false) {
            if (array_key_exists($monster['from_monster_id'], $monsters) === false) {
                $monsters[$monster['from_monster_id']] = [];
            }
            $monsters[$monster['from_monster_id']][] = (new Monster())
                ->setId($monster['id'])
                ->setName($monster['name'])
                ->setDexId($monster['dexId']);
        }

        return $monsters;
    }
}
