<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\DetailedMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\CryRepository;
use zbtnot\MonsterDb\Repository\GraphicRepository;
use zbtnot\MonsterDb\Repository\MonsterRepository;
use zbtnot\MonsterDb\Repository\MoveRepository;
use zbtnot\MonsterDb\Repository\TypeRepository;

class DetailedMonsterService
{
    public function __construct(
        private readonly TypeRepository $typeRepository,
        private readonly GraphicRepository $illustrationRepository,
        private readonly GraphicService $illustrationService,
        private readonly MoveRepository $moveRepository,
        private readonly MonsterRepository $monsterRepository,
        private readonly CryRepository $cryRepository,
    ) {
    }

    public function fetchDetailedMonsterFromMonster(Monster $monster): DetailedMonster
    {
        $types = $this->typeRepository->fetchTypesByMonsterId($monster->getId());
        $illustration = $this->illustrationRepository->fetchIllustrationByMonsterId($monster->getId());
        $sprite = $this->illustrationRepository->fetchSpriteByMonsterId($monster->getId());
        $cry = $this->cryRepository->fetchCryByMonsterId($monster->getId());
        $moves = $this->moveRepository->getMovesByMonsterId($monster->getId());

        $evolutions = $this->monsterRepository->fetchMonstersFromEvolutionTreeByMonsterId($monster->getId());
        foreach ($evolutions as &$evolutionList) {
            $evolutionList = $this->illustrationService->fetchGraphicMonstersFromMonsters($evolutionList);
        }

        return (new DetailedMonster($monster))
            ->setTypes($types)
            ->setIllustrationPath($illustration)
            ->setSpritePath($sprite)
            ->setCryPath($cry)
            ->setMoves($moves)
            ->setEvolutions($evolutions);
    }
}
