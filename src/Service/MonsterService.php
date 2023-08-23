<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\MonsterRepository;

class MonsterService
{
    private MonsterRepository $monsterRepository;

    public function __construct(MonsterRepository $monsterRepository)
    {
        $this->monsterRepository = $monsterRepository;
    }

    /**
     * @return Monster[]
     */
    public function fetchMonsters(int $offset, int $count): array
    {
        return $this->monsterRepository->fetchMonsters($offset, $count);
    }
}
