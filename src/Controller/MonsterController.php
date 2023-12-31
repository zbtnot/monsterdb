<?php

namespace zbtnot\MonsterDb\Controller;

use DI\Attribute\Inject;
use Fig\Http\Message\StatusCodeInterface;
use Slim\Psr7\Request;
use Slim\Psr7\Response;
use zbtnot\MonsterDb\Http\JsonResponse;
use zbtnot\MonsterDb\Service\DetailedMonsterService;
use zbtnot\MonsterDb\Service\GraphicService;
use zbtnot\MonsterDb\Service\MonsterService;

class MonsterController extends Controller
{
    public function __construct(
        private readonly MonsterService $monsterService,
        private readonly GraphicService $illustrationService,
        private readonly DetailedMonsterService $detailedMonsterService,
    ) {
    }

    public function indexAction(Request $request, Response $response): Response
    {
        $response->getBody()->write($this->view('VueEntrypoint.html'));

        return $response;
    }

    public function fetchMonstersAction(Request $request, Response $response): JsonResponse
    {
        $offset = $request->getQueryParams()['offset'] ?? 0;
        $count = $request->getQueryParams()['count'] ?? 151;
        $monsters = $this->monsterService->fetchMonsters($offset, $count);
        $illustratedMonsters = $this->illustrationService->fetchGraphicMonstersFromMonsters($monsters);

        return new JsonResponse($illustratedMonsters);
    }

    /**
     * @param Request $request
     * @param Response $response
     * @param array<string, mixed> $args
     * @return JsonResponse
     */
    public function fetchMonsterByDexId(Request $request, Response $response, array $args): JsonResponse
    {
        $status = StatusCodeInterface::STATUS_OK;
        try {
            $monster = $this->monsterService->fetchMonsterByDexId($args['id']);
            $detailedMonster = $this->detailedMonsterService->fetchDetailedMonsterFromMonster($monster);
            $nextPreviousMonsters = $this->monsterService->fetchNextPreviousMonstersByDexId($args['id']);

            $result = array_merge(['monster' => $detailedMonster], $nextPreviousMonsters);
        } catch (\Throwable $e) {
            $status = StatusCodeInterface::STATUS_BAD_REQUEST;
            $this->logger->error($e->getMessage());
        } finally {
            return new JsonResponse(
                $result ?? '',
                $response->withStatus($status)
            );
        }
    }
}
