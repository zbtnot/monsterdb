<?php

use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\DetailedMonster;
use zbtnot\MonsterDb\Model\IllustratedMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Model\Move;
use zbtnot\MonsterDb\Model\Type;
use zbtnot\MonsterDb\Repository\IllustrationRepository;
use zbtnot\MonsterDb\Repository\MonsterRepository;
use zbtnot\MonsterDb\Repository\MoveRepository;
use zbtnot\MonsterDb\Repository\TypeRepository;
use zbtnot\MonsterDb\Service\DetailedMonsterService;
use zbtnot\MonsterDb\Service\IllustrationService;

/**
 * @coversDefaultClass zbtnot\MonsterDb\Service\DetailedMonsterService
 * @covers zbtnot\MonsterDb\Service\DetailedMonsterService
 */
class DetailedMonsterServiceTest extends TestCase
{
    private MockObject $typeRepository;
    private MockObject $illustrationRepository;
    private MockObject $illustrationService;
    private MockObject $moveRepository;
    private MockObject $monsterRepository;

    private DetailedMonsterService $detailedMonsterService;

    protected function setUp(): void
    {
        $this->typeRepository = $this->createMock(TypeRepository::class);
        $this->illustrationRepository = $this->createMock(IllustrationRepository::class);
        $this->illustrationService = $this->createMock(IllustrationService::class);
        $this->moveRepository = $this->createMock(MoveRepository::class);
        $this->monsterRepository = $this->createMock(MonsterRepository::class);

        $this->detailedMonsterService = new DetailedMonsterService(
            $this->typeRepository,
            $this->illustrationRepository,
            $this->illustrationService,
            $this->moveRepository,
            $this->monsterRepository,
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
        $evolutions = [$monster->getId() => [new Monster()]];
        $illustratedEvolutions = [new IllustratedMonster($evolutions[$monster->getId()][0])];

        $detailedMonster = (new DetailedMonster($monster))
            ->setTypes($types)
            ->setMoves($moves)
            ->setEvolutions([$monster->getId() => $illustratedEvolutions])
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

        $this->illustrationService
            ->expects($this->once())
            ->method('fetchIllustratedMonstersFromMonsters')
            ->with($evolutions[$monster->getId()])
            ->willReturn($illustratedEvolutions);

        $this->moveRepository
            ->expects($this->once())
            ->method('getMovesByMonsterId')
            ->with($monster->getId())
            ->willReturn($moves);

        $this->monsterRepository
            ->expects($this->once())
            ->method('fetchMonstersFromEvolutionTreeByMonsterId')
            ->with($monster->getId())
            ->willReturn($evolutions);

        $result = $this->detailedMonsterService->fetchDetailedMonsterFromMonster($monster);
        $this->assertEquals($detailedMonster, $result);
    }
}
