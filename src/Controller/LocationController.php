<?php

namespace zbtnot\MonsterDb\Controller;

use zbtnot\MonsterDb\Http\JsonResponse;
use zbtnot\MonsterDb\Model\Location;
use zbtnot\MonsterDb\Repository\LocationRepository;

class LocationController extends Controller
{
    public function __construct(private readonly LocationRepository $locationRepository)
    {
    }

    public function fetchLocationsAction(): JsonResponse
    {
        $locations = [];
        try {
            $locations = $this->locationRepository->fetchLocations();
        } catch (\Throwable $e) {
            $this->logger->error($e->getMessage());
        } finally {
            return new JsonResponse($locations);
        }
    }
}
