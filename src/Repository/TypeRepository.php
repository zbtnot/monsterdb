<?php

namespace zbtnot\MonsterDb\Repository;

use zbtnot\MonsterDb\Model\Type;

class TypeRepository extends Repository
{
    /** @return Type[] */
    public function fetchTypesByMonsterId(int $monsterId): array
    {
        $sql = <<<SQL
            SELECT 
                type.name
            FROM type
            INNER JOIN monster_type ON type.id = monster_type.type_id
            WHERE monster_id = :id;
        SQL;

        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $monsterId]);

        return $statement->fetchAll(\PDO::FETCH_CLASS, Type::class);
    }
}
