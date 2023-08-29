<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\MonsterRepository;

class MonsterService
{
    public function __construct(private readonly MonsterRepository $monsterRepository)
    {
    }

    /**
     * @return Monster[]
     */
    public function fetchMonsters(int $offset, int $count): array
    {
        return $this->monsterRepository->fetchMonsters($offset, $count);
    }

    public function fetchMonsterByDexId(int $dexId): Monster
    {
        $monster = $this->monsterRepository->fetchMonsterById($dexId);
        if (!$monster) {
            throw new \InvalidArgumentException("The monster with dexId {$dexId} could not be found.");
        }

        return $monster;
    }
}
