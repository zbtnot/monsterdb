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

    /** @return array<string, Monster> */
    public function fetchNextPreviousMonstersByDexId(int $dexId): array
    {
        $monsters = $this->monsterRepository->fetchNextPreviousMonsterById($dexId);
        $reducer = function (array $carry, Monster $monster) use ($dexId) {
            $key = $monster->getDexId() < $dexId ? 'previous' : 'next';
            $carry[$key] = $monster;

            return $carry;
        };

        return array_reduce($monsters, $reducer, []);
    }
}
