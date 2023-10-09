<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\DetailedMove;
use zbtnot\MonsterDb\Model\Move;
use zbtnot\MonsterDb\Repository\GraphicRepository;
use zbtnot\MonsterDb\Repository\MonsterRepository;
use zbtnot\MonsterDb\Repository\MoveRepository;

class MoveService
{
    public function __construct(
        private readonly MoveRepository $moveRepository,
        private readonly GraphicRepository $graphicRepository,
        private readonly MonsterRepository $monsterRepository,
        private readonly GraphicService $graphicService,
    ) {
    }

    /** @return Move[] */
    public function fetchMoves(?int $limit = null, ?int $offset = null): array
    {
        return $this->moveRepository->getMoves($limit, $offset);
    }

    public function fetchMoveById(int $id): Move
    {
        return $this->moveRepository->getMoveById($id);
    }

    public function fetchDetailedMoveByMove(Move $move): DetailedMove
    {
        $animations = $this->graphicRepository->fetchAnimationsByMoveId($move->getId());
        $monsterIds = $this->moveRepository->fetchMonsterIdsByMoveId($move->getId());
        $monsters = $this->monsterRepository->fetchMonstersByIds($monsterIds);
        $graphicMonsters = $this->graphicService->fetchGraphicMonstersFromMonsters($monsters);

        return (new DetailedMove($move))
            ->setAnimations($animations)
            ->setMonsters($graphicMonsters);
    }
}
