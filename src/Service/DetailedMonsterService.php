<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\DetailedMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\IllustrationRepository;
use zbtnot\MonsterDb\Repository\MonsterRepository;
use zbtnot\MonsterDb\Repository\MoveRepository;
use zbtnot\MonsterDb\Repository\TypeRepository;

class DetailedMonsterService
{
    public function __construct(
        private readonly TypeRepository $typeRepository,
        private readonly IllustrationRepository $illustrationRepository,
        private readonly IllustrationService $illustrationService,
        private readonly MoveRepository $moveRepository,
        private readonly MonsterRepository $monsterRepository,
    ) {
    }

    public function fetchDetailedMonsterFromMonster(Monster $monster): DetailedMonster
    {
        $types = $this->typeRepository->fetchTypesByMonsterId($monster->getId());
        $illustration = $this->illustrationRepository->fetchIllustrationByMonsterId($monster->getId());
        $moves = $this->moveRepository->getMovesByMonsterId($monster->getId());

        $evolutions = $this->monsterRepository->fetchMonstersFromEvolutionTreeByMonsterId($monster->getId());
        foreach ($evolutions as &$evolutionList) {
            $evolutionList = $this->illustrationService->fetchIllustratedMonstersFromMonsters($evolutionList);
        }

        return (new DetailedMonster($monster))
            ->setTypes($types)
            ->setIllustrationPath($illustration)
            ->setMoves($moves)
            ->setEvolutions($evolutions);
    }
}
