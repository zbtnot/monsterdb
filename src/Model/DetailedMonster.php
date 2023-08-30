<?php

namespace zbtnot\MonsterDb\Model;

class DetailedMonster implements \JsonSerializable
{
    private Monster $monster;

    private string $illustrationPath;

    /** @var Type[] */
    private array $types;

    /** @var Move[] */
    private array $moves;

    public function __construct(Monster $monster)
    {
        $this->monster = $monster;
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

    /** Move[] */
    public function getMoves(): array
    {
        return $this->moves;
    }

    public function setMoves(array $moves): self
    {
        $this->moves = $moves;

        return $this;
    }

    public function jsonSerialize(): array
    {
        $fields = [
            'types' => array_map(fn(Type $type) => $type->getName(), $this->types),
            'illustrationPath' => $this->illustrationPath,
            'moves' => array_map(fn(Move $move) => $move->jsonSerialize(), $this->moves),
        ];

        return array_merge($fields, $this->monster->jsonSerialize());
    }
}
