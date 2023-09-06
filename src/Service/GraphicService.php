<?php

namespace zbtnot\MonsterDb\Service;

use zbtnot\MonsterDb\Model\GraphicMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\GraphicRepository;

class GraphicService
{
    public function __construct(private readonly GraphicRepository $graphicRepository)
    {
    }

    /**
     * @param Monster[] $monsters
     * @return GraphicMonster[]
     */
    public function fetchGraphicMonstersFromMonsters(array $monsters): array
    {
        $monstersById = [];
        foreach ($monsters as $monster) {
            $monstersById[$monster->getId()] = $monster;
        }
        $illustrations = $this->graphicRepository->fetchIllustrationsByMonsterIds(array_keys($monstersById));
        $sprites = $this->graphicRepository->fetchSpritesByMonsterIds(array_keys($monstersById));

        $graphicMonsters = [];
        foreach ($illustrations as $monsterId => $illustration) {
            $graphicMonster = new GraphicMonster($monstersById[$monsterId]);
            $graphicMonster->setIllustrationPath($illustration);
            $graphicMonsters[$monsterId] = $graphicMonster;
        }
        foreach ($sprites as $monsterId => $sprite) {
            $graphicMonsters[$monsterId]->setSpritePath($sprite);
        }

        return $graphicMonsters;
    }
}
