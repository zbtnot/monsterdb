<?php

namespace zbtnot\MonsterDb\Repository;

use zbtnot\MonsterDb\Model\Location;

class LocationRepository extends Repository
{
    /** @return Location[] */
    public function fetchLocations(): array
    {
        $sql = <<<SQL
            SELECT 
                name,
                x,
                y,
                width,
                height
            FROM location;
        SQL;
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        $locations = $stmt->fetchAll();

        $mapper = fn(array $location) => (new Location())
            ->setName($location['name'])
            ->setX($location['x'])
            ->setY($location['y'])
            ->setWidth($location['width'])
            ->setHeight($location['height']);

        return array_map($mapper, $locations);
    }

    /** @return Location[] */
    public function findLocationsByMonsterId(int $monsterId): array
    {
        $sql = <<<SQL
            SELECT 
                name,
                x,
                y,
                width,
                height
            FROM location
            INNER JOIN monster_location ml on location.id = ml.location_id
            WHERE ml.monster_id = :id;
        SQL;

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([':id' => $monsterId]);
        $locations = $stmt->fetchAll();

        $mapper = fn(array $location) => (new Location())
            ->setName($location['name'])
            ->setX($location['x'])
            ->setY($location['y'])
            ->setWidth($location['width'])
            ->setHeight($location['height']);

        return array_map($mapper, $locations);
    }
}
