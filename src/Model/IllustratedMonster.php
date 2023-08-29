<?php

namespace zbtnot\MonsterDb\Model;

class IllustratedMonster implements \JsonSerializable
{
    private Monster $monster;

    private string $illustrationPath;

    public function __construct(Monster $monster)
    {
        $this->monster = $monster;
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

    public function jsonSerialize(): array
    {
        $fields = [
            'illustrationPath' => $this->getIllustrationPath(),
        ];

        return array_merge($fields, $this->monster->jsonSerialize());
    }
}
