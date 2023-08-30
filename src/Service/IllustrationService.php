<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\IllustratedMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\IllustrationRepository;

class IllustrationService
{
    private IllustrationRepository $illustrationRepository;

    public function __construct(IllustrationRepository $illustrationRepository)
    {
        $this->illustrationRepository = $illustrationRepository;
    }

    /**
     * @param Monster[] $monsters
     * @return IllustratedMonster[]
     */
    public function fetchIllustratedMonstersFromMonsters(array $monsters): array
    {
        $monstersById = [];
        foreach ($monsters as $monster) {
            $monstersById[$monster->getId()] = $monster;
        }
        $illustrations = $this->illustrationRepository->fetchIllustrationsByMonsterIds(array_keys($monstersById));

        $illustratedMonsters = [];
        foreach ($illustrations as $monsterId => $illustration) {
            $illustratedMonster = new IllustratedMonster($monstersById[$monsterId]);
            $illustratedMonster->setIllustrationPath($illustration);
            $illustratedMonsters[] = $illustratedMonster;
        }

        return $illustratedMonsters;
    }
}
