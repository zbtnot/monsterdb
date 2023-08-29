<?php

use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\DetailedMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Model\Move;
use zbtnot\MonsterDb\Model\Type;
use zbtnot\MonsterDb\Repository\IllustrationRepository;
use zbtnot\MonsterDb\Repository\MoveRepository;
use zbtnot\MonsterDb\Repository\TypeRepository;
use zbtnot\MonsterDb\Service\DetailedMonsterService;

/**
 * @coversDefaultClass zbtnot\MonsterDb\Service\DetailedMonsterService
 * @covers zbtnot\MonsterDb\Service\DetailedMonsterService
 */
class DetailedMonsterServiceTest extends TestCase
{
    private MockObject $typeRepository;
    private MockObject $illustrationRepository;
    private MockObject $moveRepository;

    private DetailedMonsterService $detailedMonsterService;

    protected function setUp(): void
    {
        $this->typeRepository = $this->createMock(TypeRepository::class);
        $this->illustrationRepository = $this->createMock(IllustrationRepository::class);
        $this->moveRepository = $this->createMock(MoveRepository::class);

        $this->detailedMonsterService = new DetailedMonsterService(
            $this->typeRepository,
            $this->illustrationRepository,
            $this->moveRepository,
        );
    }

    public function testCanFetchDetailedMonsterFromMonster()
    {
        $monster = (new Monster())
            ->setId(1234)
            ->setDexId(1)
            ->setName('Bulbasaur');
        $illustration = 'bulb.png';
        $types = [new Type()];
        $moves = [new Move()];

        $detailedMonster = (new DetailedMonster($monster))
            ->setTypes($types)
            ->setMoves($moves)
            ->setIllustrationPath($illustration);

        $this->typeRepository
            ->expects($this->once())
            ->method('fetchTypesByMonsterId')
            ->with($monster->getId())
            ->willReturn($types);

        $this->illustrationRepository
            ->expects($this->once())
            ->method('fetchIllustrationByMonsterId')
            ->with($monster->getId())
            ->willReturn($illustration);

        $this->moveRepository
            ->expects($this->once())
            ->method('getMovesByMonsterId')
            ->with($monster->getId())
            ->willReturn($moves);

        $result = $this->detailedMonsterService->fetchDetailedMonsterFromMonster($monster);
        $this->assertEquals($detailedMonster, $result);
    }
}
