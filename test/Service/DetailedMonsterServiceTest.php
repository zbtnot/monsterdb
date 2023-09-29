<?php

namespace zbtnot\MonsterDb\Tests\Service;

use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\DetailedMonster;
use zbtnot\MonsterDb\Model\EvolutionMonster;
use zbtnot\MonsterDb\Model\GraphicMonster;
use zbtnot\MonsterDb\Model\Location;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Model\Move;
use zbtnot\MonsterDb\Model\Requisite;
use zbtnot\MonsterDb\Model\RequisiteType;
use zbtnot\MonsterDb\Model\Type;
use zbtnot\MonsterDb\Repository\CryRepository;
use zbtnot\MonsterDb\Repository\EvolutionRepository;
use zbtnot\MonsterDb\Repository\GraphicRepository;
use zbtnot\MonsterDb\Repository\LocationRepository;
use zbtnot\MonsterDb\Repository\MonsterRepository;
use zbtnot\MonsterDb\Repository\MoveRepository;
use zbtnot\MonsterDb\Repository\TypeRepository;
use zbtnot\MonsterDb\Service\DetailedMonsterService;
use zbtnot\MonsterDb\Service\GraphicService;

/**
 * @coversDefaultClass zbtnot\MonsterDb\Service\DetailedMonsterService
 * @covers zbtnot\MonsterDb\Service\DetailedMonsterService
 */
class DetailedMonsterServiceTest extends TestCase
{
    private MockObject $typeRepository;
    private MockObject $graphicRepository;
    private MockObject $graphicService;
    private MockObject $moveRepository;
    private MockObject $monsterRepository;
    private MockObject $cryRepository;
    private MockObject $evolutionRepository;
    private MockObject $locationRepository;

    private DetailedMonsterService $detailedMonsterService;

    protected function setUp(): void
    {
        $this->typeRepository = $this->createMock(TypeRepository::class);
        $this->graphicRepository = $this->createMock(GraphicRepository::class);
        $this->graphicService = $this->createMock(GraphicService::class);
        $this->moveRepository = $this->createMock(MoveRepository::class);
        $this->monsterRepository = $this->createMock(MonsterRepository::class);
        $this->cryRepository = $this->createMock(CryRepository::class);
        $this->evolutionRepository = $this->createMock(EvolutionRepository::class);
        $this->locationRepository = $this->createMock(LocationRepository::class);

        $this->detailedMonsterService = new DetailedMonsterService(
            $this->typeRepository,
            $this->graphicRepository,
            $this->graphicService,
            $this->moveRepository,
            $this->monsterRepository,
            $this->cryRepository,
            $this->evolutionRepository,
            $this->locationRepository,
        );
    }

    public function testCanFetchDetailedMonsterFromMonster()
    {
        $monster = (new Monster())
            ->setId(1234)
            ->setDexId(1)
            ->setName('Bulbasaur');
        $illustration = 'bulb.png';
        $sprite = 'bulb_sprite.png';
        $types = [new Type()];
        $moves = [new Move()];
        $evolutions = [$monster->getId() => [(new Monster())->setEvolutionHowId(0)]];
        $illustratedEvolutions = [new GraphicMonster($evolutions[$monster->getId()][0])];
        $cry = 'bubl.flac';
        $locations = [new Location()];

        $evolutionRequisite = (new Requisite())->setType(RequisiteType::LEVEL_UP)->setContents(0);
        $evolutionMonsters = array_map(function (GraphicMonster $graphicMonster) use ($evolutionRequisite) {
            return (new EvolutionMonster())->setMonster($graphicMonster)->setRequisite($evolutionRequisite);
        }, $illustratedEvolutions);

        $detailedMonster = (new DetailedMonster($monster))
            ->setTypes($types)
            ->setMoves($moves)
            ->setEvolutions([$monster->getId() => $evolutionMonsters])
            ->setIllustrationPath($illustration)
            ->setSpritePath($sprite)
            ->setCryPath($cry)
            ->setLocations($locations);

        $this->typeRepository
            ->expects($this->once())
            ->method('fetchTypesByMonsterId')
            ->with($monster->getId())
            ->willReturn($types);

        $this->graphicRepository
            ->expects($this->once())
            ->method('fetchIllustrationByMonsterId')
            ->with($monster->getId())
            ->willReturn($illustration);

        $this->graphicRepository
            ->expects($this->once())
            ->method('fetchSpriteByMonsterId')
            ->with($monster->getId())
            ->willReturn($sprite);

        $this->graphicService
            ->expects($this->once())
            ->method('fetchGraphicMonstersFromMonsters')
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

        $this->cryRepository
            ->expects($this->once())
            ->method('fetchCryByMonsterId')
            ->with($monster->getId())
            ->willReturn($cry);

        $this->evolutionRepository
            ->expects($this->once())
            ->method('fetchRequisiteByEvolutionId')
            ->with($monster->getEvolutionHowId())
            ->willReturn($evolutionRequisite);

        $this->locationRepository
            ->expects($this->once())
            ->method('findLocationsByMonsterId')
            ->with($monster->getId())
            ->willReturn($locations);

        $result = $this->detailedMonsterService->fetchDetailedMonsterFromMonster($monster);
        $this->assertEquals($detailedMonster, $result);
    }
}
