<?php

use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\IllustratedMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\IllustrationRepository;
use zbtnot\MonsterDb\Service\IllustrationService;

/**
 * @coversDefaultClass zbtnot\MonsterDb\Service\IllustrationService
 * @covers zbtnot\MonsterDb\Service\IllustrationService
 */
class IllustrationServiceTest extends TestCase
{
    private MockObject $illustrationRepository;
    private IllustrationService $illustrationService;

    protected function setUp(): void
    {
        $this->illustrationRepository = $this->createMock(IllustrationRepository::class);
        $this->illustrationService = new IllustrationService($this->illustrationRepository);
    }

    /** @covers ::fetchIllustratedMonstersFromMonsters */
    public function testCanFetchIllustratedMonstersFromMonsters()
    {
        $monster = (new Monster())
            ->setId(1234)
            ->setDexId(1)
            ->setName('Bulbasaur');
        $illustrations = [1234 => 'bulb.png'];

        $illustratedMonsters = [
            (new IllustratedMonster($monster))->setIllustrationPath($illustrations[$monster->getId()]),
        ];

        $this->illustrationRepository
            ->expects($this->once())
            ->method('fetchIllustrationsByMonsterIds')
            ->with([$monster->getId()])
            ->willReturn($illustrations);

        $result = $this->illustrationService->fetchIllustratedMonstersFromMonsters([$monster]);
        $this->assertEquals($illustratedMonsters, $result);
    }
}
