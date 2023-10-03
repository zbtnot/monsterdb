<?php

namespace zbtnot\MonsterDb\Tests\Service;

use PHPUnit\Framework\Attributes\DataProvider;
use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\MonsterRepository;
use zbtnot\MonsterDb\Service\MonsterService;

/**
 * @coversDefaultClass zbtnot\MonsterDb\Service\MonsterService
 * @covers zbtnot\MonsterDb\Service\MonsterService
 */
class MonsterServiceTest extends TestCase
{
    private MockObject $monsterRepository;
    private MonsterService $monsterService;

    protected function setUp(): void
    {
        $this->monsterRepository = $this->createMock(MonsterRepository::class);
        $this->monsterService = new MonsterService($this->monsterRepository);
    }

    /** @covers ::fetchMonsters */
    public function testCanFetchMonsters()
    {
        $monsters = [
            (new Monster())
                ->setDexId(1)
                ->setName('Bulbasaur')
        ];
        $this->monsterRepository->method('fetchMonsters')->willReturn($monsters);

        $result = $this->monsterService->fetchMonsters(0, 1);
        $this->assertEquals($monsters, $result);
    }

    /** @covers ::fetchMonsterByDexId */
    public function testCanFetchMonsterByDexId()
    {
        $dexId = 1;
        $monster = (new Monster())
            ->setDexId($dexId)
            ->setName('Bulbasaur');
        $this->monsterRepository->method('fetchMonsterById')->willReturn($monster);

        $result = $this->monsterService->fetchMonsterByDexId($dexId);
        $this->assertEquals($monster, $result);
    }

    /** @covers ::fetchMonsterByDexId */
    public function testFetchMonsterByDexIdThrowsOnNotFound()
    {
        $this->expectException(\InvalidArgumentException::class);
        $this->monsterRepository->method('fetchMonsterById')->willReturn(null);

        $this->monsterService->fetchMonsterByDexId(1);
    }

    /** @covers ::fetchNextPreviousMonstersByDexId */
    #[DataProvider('nextPreviousMonsterProvider')]
    public function testCanFetchNextPreviousMonstersByDexId($dexId, array $monsters, array $expected)
    {
        $this->monsterRepository
            ->method('fetchNextPreviousMonsterById')
            ->with($dexId)
            ->willReturn($monsters);

        $result = $this->monsterService->fetchNextPreviousMonstersByDexId($dexId);
        $this->assertEquals($expected, $result);
    }

    public static function nextPreviousMonsterProvider(): array
    {
        $monster1 = (new Monster())->setDexId(2);

        $monster2 = (new Monster())->setDexId(150);

        $monster3 = (new Monster())->setDexId(1);
        $monster4 = (new Monster())->setDexId(3);

        return [
            'no previous monster' => [
                1,
                [$monster1],
                ['next' => $monster1],
            ],
            'no next monster' => [
                151,
                [$monster2],
                ['previous' => $monster2],
            ],
            'previous and next monsters' => [
                2,
                [
                    $monster3,
                    $monster4,
                ],
                ['previous' => $monster3, 'next' => $monster4],
            ]
        ];
    }
}
