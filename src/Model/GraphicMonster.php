<?php

namespace zbtnot\MonsterDb\Model;

/**
 * Represents an object containing a monster and associated graphical data.
 */
class GraphicMonster implements \JsonSerializable
{
    private string $illustrationPath;
    private string $spritePath;

    public function __construct(private readonly Monster $monster)
    {
    }

    public function getMonster(): Monster
    {
        return $this->monster;
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

    public function setSpritePath(string $spritePath): self
    {
        $this->spritePath = $spritePath;

        return $this;
    }

    public function jsonSerialize(): array
    {
        $fields = [
            'illustrationPath' => $this->getIllustrationPath(),
            'spritePath' => $this->getSpritePath(),
        ];

        return array_merge($fields, $this->getMonster()->jsonSerialize());
    }
}
