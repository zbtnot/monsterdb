<?php

namespace zbtnot\MonsterDb\Controller;

use DI\Attribute\Inject;
use Slim\Psr7\Request;
use Slim\Psr7\Response;
use zbtnot\MonsterDb\Http\JsonResponse;
use zbtnot\MonsterDb\Service\MonsterService;

class MonsterController extends Controller
{
    #[Inject]
    private MonsterService $monsterService;

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

        return new JsonResponse($monsters);
    }
}
