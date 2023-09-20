<?php

namespace zbtnot\MonsterDb\Tests\Service;

use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\DetailedMove;
use zbtnot\MonsterDb\Model\GraphicMonster;
use zbtnot\MonsterDb\Model\Monster;
use zbtnot\MonsterDb\Model\Move;
use zbtnot\MonsterDb\Repository\GraphicRepository;
use zbtnot\MonsterDb\Repository\MonsterRepository;
use zbtnot\MonsterDb\Repository\MoveRepository;
use zbtnot\MonsterDb\Service\GraphicService;
use zbtnot\MonsterDb\Service\MoveService;

/**
 * @coversDefaultClass zbtnot\MonsterDb\Service\MoveService
 * @covers zbtnot\MonsterDb\Service\MoveService
 */
class MoveServiceTest extends TestCase
{
    private MockObject $moveRepository;
    private MockObject $graphicRepository;
    private MockObject $monsterRepository;
    private MockObject $graphicService;
    private MoveService $moveService;

    protected function setUp(): void
    {
        $this->moveRepository = $this->createMock(MoveRepository::class);
        $this->graphicService = $this->createMock(GraphicService::class);
        $this->graphicRepository = $this->createMock(GraphicRepository::class);
        $this->monsterRepository = $this->createMock(MonsterRepository::class);
        $this->moveService = new MoveService(
            $this->moveRepository,
            $this->graphicRepository,
            $this->monsterRepository,
            $this->graphicService
        );
    }

    public function testCanFetchMoves()
    {
        $moves = [new Move()];
        $this->moveRepository->method('getMoves')->willReturn($moves);

        $result = $this->moveService->fetchMoves();
        $this->assertEquals($moves, $result);
    }

    public function testCanFetchMoveById()
    {
        $moves = [123 => new Move()];
        $this->moveRepository->method('getMoveById')->with(123)->willReturn($moves[123]);

        $result = $this->moveService->fetchMoveById(123);
        $this->assertEquals($moves[123], $result);
    }

    public function testCanFetchDetailedMoveByMove()
    {

        $move = (new Move())->setId(123);
        $animationPath = '/foo.webm';
        $monster = (new Monster())->setId(456);
        $graphicMonster = new GraphicMonster($monster);

        $this->graphicRepository
            ->method('fetchAnimationByMoveId')
            ->with(123)
            ->willReturn($animationPath);

        $this->moveRepository
            ->method('fetchMonsterIdsByMoveId')
            ->with(123)
            ->willReturn([$monster->getId()]);

        $this->monsterRepository
            ->method('fetchMonstersByIds')
            ->with([$monster->getId()])
            ->willReturn([$monster]);

        $this->graphicService
            ->method('fetchGraphicMonstersFromMonsters')
            ->with([$monster])
            ->willReturn([$graphicMonster]);

        $expected = (new DetailedMove($move))->setAnimationPath($animationPath)->setMonsters([$graphicMonster]);
        $result = $this->moveService->fetchDetailedMoveByMove($move);
        $this->assertEquals($expected, $result);
    }
}
