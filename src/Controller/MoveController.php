<?php

namespace zbtnot\MonsterDb\Controller;

use Fig\Http\Message\StatusCodeInterface;
use Slim\Psr7\Request;
use Slim\Psr7\Response;
use zbtnot\MonsterDb\Http\JsonResponse;
use zbtnot\MonsterDb\Service\MoveService;

class MoveController extends Controller
{
    public function __construct(private readonly MoveService $moveService)
    {
    }

    public function fetchMovesAction(Request $request, Response $response): JsonResponse
    {
        $status = StatusCodeInterface::STATUS_OK;
        $moves = [];
        try {
            $moves = $this->moveService->fetchMoves();
        } catch (\Throwable $e) {
            $status = StatusCodeInterface::STATUS_BAD_REQUEST;
            $this->logger->error($e->getMessage());
        } finally {
            return new JsonResponse($moves, $response->withStatus($status));
        }
    }

    public function fetchMoveByIdAction(Request $request, Response $response, array $args): JsonResponse
    {
        $status = StatusCodeInterface::STATUS_OK;
        try {
            $move = $this->moveService->fetchMoveById($args['id']);
            $detailedMove = $this->moveService->fetchDetailedMoveByMove($move);
        } catch (\Throwable $e) {
            $status = StatusCodeInterface::STATUS_BAD_REQUEST;
            $this->logger->error($e->getMessage());
        } finally {
            return new JsonResponse($detailedMove ?? null, $response->withStatus($status));
        }
    }
}
