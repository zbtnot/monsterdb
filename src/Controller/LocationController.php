<?php

namespace zbtnot\MonsterDb\Controller;

use Slim\Psr7\Request;
use zbtnot\MonsterDb\Http\JsonResponse;
use zbtnot\MonsterDb\Service\LocationService;

class LocationController extends Controller
{
    public function __construct(private readonly LocationService $locationService)
    {
    }

    public function fetchLocationsAction(Request $request): JsonResponse
    {
        $limit = $request->getQueryParams()['count'] ?? null;
        $offset = $request->getQueryParams()['offset'] ?? null;
        $locations = [];
        try {
            $locations = $this->locationService->fetchLocations($limit, $offset);
        } catch (\Throwable $e) {
            $this->logger->error($e->getMessage());
        } finally {
            return new JsonResponse($locations);
        }
    }
}
