<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\DetailedMonster;
use zbtnot\MonsterDb\Model\EvolutionMonster;
use zbtnot\MonsterDb\Model\GraphicMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\CryRepository;
use zbtnot\MonsterDb\Repository\EvolutionRepository;
use zbtnot\MonsterDb\Repository\GraphicRepository;
use zbtnot\MonsterDb\Repository\LocationRepository;
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
        private readonly EvolutionRepository $evolutionRepository,
        private readonly LocationRepository $locationRepository,
    ) {
    }

    public function fetchDetailedMonsterFromMonster(Monster $monster): DetailedMonster
    {
        $types = $this->typeRepository->fetchTypesByMonsterId($monster->getId());
        $illustration = $this->illustrationRepository->fetchIllustrationByMonsterId($monster->getId());
        $sprite = $this->illustrationRepository->fetchSpriteByMonsterId($monster->getId());
        $cry = $this->cryRepository->fetchCryByMonsterId($monster->getId());
        $moves = $this->moveRepository->getMovesByMonsterId($monster->getId());
        $locations = $this->locationRepository->findLocationsByMonsterId($monster->getId());

        $evolutions = $this->monsterRepository->fetchMonstersFromEvolutionTreeByMonsterId($monster->getId());
        foreach ($evolutions as &$evolutionList) {
            $graphicMonsters = $this->illustrationService->fetchGraphicMonstersFromMonsters($evolutionList);
            $evolutionList = array_map(function (GraphicMonster $graphicMonster) {
                $how = $this->evolutionRepository->fetchRequisiteByEvolutionId(
                    $graphicMonster->getMonster()->getEvolutionHowId()
                );

                return (new EvolutionMonster())
                    ->setMonster($graphicMonster)
                    ->setRequisite($how);
            }, $graphicMonsters);
        }

        return (new DetailedMonster($monster))
            ->setTypes($types)
            ->setIllustrationPath($illustration)
            ->setSpritePath($sprite)
            ->setCryPath($cry)
            ->setMoves($moves)
            ->setEvolutions($evolutions)
            ->setLocations($locations);
    }
}
