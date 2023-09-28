<?php

namespace zbtnot\MonsterDb\Model;

/**
 * Represents an object containing a monster and associated details data.

 */
class DetailedMonster implements \JsonSerializable
{
    private Monster $monster;

    private string $illustrationPath;

    private string $spritePath;

    private string $cryPath;

    /** @var Type[] */
    private array $types;

    /** @var Move[] */
    private array $moves;

    /** @var array<int, EvolutionMonster[]> */
    private $evolutions;

    /** @var Location[] */
    private array $locations;

    public function __construct(Monster $monster)
    {
        $this->monster = $monster;
    }

    /** @return string[] */
    public function getTypeNames(): array
    {
        return array_map(fn(Type $type) => $type->getName(), $this->types);
    }

    public function getTypes(): array
    {
        return $this->types;
    }

    public function setTypes(array $types): self
    {
        $this->types = $types;

        return $this;
    }

    public function getIllustrationPath(): string
    {
        return $this->illustrationPath;
    }

    public function setIllustrationPath(string $path): self
    {
        $this->illustrationPath = $path;

        return $this;
    }

    public function getSpritePath(): string
    {
        return $this->spritePath;
    }

    public function setSpritePath(string $sprite): self
    {
        $this->spritePath = $sprite;

        return $this;
    }

    public function getCryPath(): string
    {
        return $this->cryPath;
    }

    public function setCryPath(string $cry): self
    {
        $this->cryPath = $cry;

        return $this;
    }

    /** @return Move[] */
    public function getMoves(): array
    {
        return $this->moves;
    }

    /** @var Move[] $moves */
    public function setMoves(array $moves): self
    {
        $this->moves = $moves;

        return $this;
    }

    public function getEvolutions(): array
    {
        return $this->evolutions;
    }

    /** @var array<int, EvolutionMonster[]> $evolutions */
    public function setEvolutions($evolutions): self
    {
        $this->evolutions = $evolutions;

        return $this;
    }

    /** @return Location[] */
    public function getLocations(): array
    {
        return $this->locations;
    }

    /** @param Location[] $locations */
    public function setLocations(array $locations): self
    {
        $this->locations = $locations;

        return $this;
    }

    public function jsonSerialize(): array
    {
        $fields = [
            'types' => $this->getTypeNames(),
            'illustrationPath' => $this->getIllustrationPath(),
            'spritePath' => $this->getSpritePath(),
            'cryPath' => $this->getCryPath(),
            'moves' => $this->getMoves(),
            'evolutions' => $this->getEvolutions(),
            'locations' => $this->getLocations(),
        ];

        return array_merge($fields, $this->monster->jsonSerialize());
    }
}
