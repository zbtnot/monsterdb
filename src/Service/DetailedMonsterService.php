<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\DetailedMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\IllustrationRepository;
use zbtnot\MonsterDb\Repository\MoveRepository;
use zbtnot\MonsterDb\Repository\TypeRepository;

class DetailedMonsterService
{
    private TypeRepository $typeRepository;
    private IllustrationRepository $illustrationRepository;
    private MoveRepository $moveRepository;

    public function __construct(
        TypeRepository $typeRepository,
        IllustrationRepository $illustrationRepository,
        MoveRepository $moveRepository,
    ) {
        $this->typeRepository = $typeRepository;
        $this->illustrationRepository = $illustrationRepository;
        $this->moveRepository = $moveRepository;
    }

    public function fetchDetailedMonsterFromMonster(Monster $monster): DetailedMonster
    {
        $types = $this->typeRepository->fetchTypesByMonsterId($monster->getId());
        $illustration = $this->illustrationRepository->fetchIllustrationByMonsterId($monster->getId());
        $moves = $this->moveRepository->getMovesByMonsterId($monster->getId());

        return (new DetailedMonster($monster))
            ->setTypes($types)
            ->setIllustrationPath($illustration)
            ->setMoves($moves);
    }
}
