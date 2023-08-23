<?php

use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Repository\MonsterRepository;
use zbtnot\MonsterDb\Service\MonsterService;

class MonsterServiceTest extends TestCase
{
    private MockObject $monsterRepository;
    private MonsterService $monsterService;

    protected function setUp(): void
    {
        $this->monsterRepository = $this->createMock(MonsterRepository::class);
        $this->monsterService = new MonsterService($this->monsterRepository);
    }

    public function testCanFetchMonsters()
    {
        $monsters = [
            (new Monster())
                ->setDexId(1)
                ->setName('Bulbasuar')
                ->setIllustrationPath('/foo/bar.png')
        ];
        $this->monsterRepository->method('fetchMonsters')->willReturn($monsters);

        $result = $this->monsterService->fetchMonsters(0, 1);
        $this->assertEquals($monsters, $result);
    }
}
