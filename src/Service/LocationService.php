<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\Location;
use zbtnot\MonsterDb\Repository\LocationRepository;

class LocationService
{
    public function __construct(private readonly LocationRepository $locationRepository)
    {
    }

    /** @return Location[] */
    public function fetchLocations(?int $limit = null, ?int $offset = null): array
    {
        return $this->locationRepository->fetchLocations($limit, $offset);
    }
}
