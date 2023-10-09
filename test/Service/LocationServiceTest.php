<?php

namespace zbtnot\MonsterDb\Tests\Service;

use PHPUnit\Framework\MockObject\MockObject;
use PHPUnit\Framework\TestCase;
use zbtnot\MonsterDb\Model\Location;
use zbtnot\MonsterDb\Repository\LocationRepository;
use zbtnot\MonsterDb\Service\LocationService;

/**
 * @coversDefaultClass zbtnot\MonsterDb\Service\LocationService
 * @covers zbtnot\MonsterDb\Service\LocationService
 */
class LocationServiceTest extends TestCase
{
    private MockObject $locationRepository;
    private LocationService $locationService;

    protected function setUp(): void
    {
        $this->locationRepository = $this->createMock(LocationRepository::class);

        $this->locationService = new LocationService($this->locationRepository);
    }

    public function testCanFetchLocations()
    {
        $location = (new Location())
            ->setName('foo')
            ->setX(0)
            ->setY(0)
            ->setWidth(1)
            ->setHeight(1);
        $this->locationRepository
            ->method('fetchLocations')
            ->with(1, 1)
            ->willReturn([$location]);

        $result = $this->locationService->fetchLocations(1, 1);
        $this->assertEquals([$location], $result);
    }
}
