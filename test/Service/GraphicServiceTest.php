<?php

namespace zbtnot\MonsterDb\Tests\Service;

use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\GraphicMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\GraphicRepository;
use zbtnot\MonsterDb\Service\GraphicService;

/**
 * @coversDefaultClass zbtnot\MonsterDb\Service\GraphicService
 * @covers zbtnot\MonsterDb\Service\GraphicService
 */
class GraphicServiceTest extends TestCase
{
    private MockObject $graphicRepository;
    private GraphicService $graphicService;

    protected function setUp(): void
    {
        $this->graphicRepository = $this->createMock(GraphicRepository::class);
        $this->graphicService = new GraphicService($this->graphicRepository);
    }

    /** @covers ::fetchGraphicMonstersFromMonsters */
    public function testCanFetchIllustratedMonstersFromMonsters()
    {
        $monster = (new Monster())
            ->setId(1234)
            ->setDexId(1)
            ->setName('Bulbasaur');
        $illustrations = [1234 => 'bulb.png'];
        $sprites = [1234 => 'bulb_sprite.png'];

        $graphicMonster = (new GraphicMonster($monster))
            ->setIllustrationPath($illustrations[$monster->getId()])
            ->setSpritePath($sprites[$monster->getId()]);

        $illustratedMonsters = [
            $monster->getId() => $graphicMonster
        ];

        $this->graphicRepository
            ->expects($this->once())
            ->method('fetchIllustrationsByMonsterIds')
            ->with([$monster->getId()])
            ->willReturn($illustrations);

        $this->graphicRepository
            ->expects($this->once())
            ->method('fetchSpritesByMonsterIds')
            ->with([$monster->getId()])
            ->willReturn($sprites);

        $result = $this->graphicService->fetchGraphicMonstersFromMonsters([$monster]);
        $this->assertEquals($illustratedMonsters, $result);
    }
}
