<?php

namespace zbtnot\MonsterDb\Model;

class Monster implements \JsonSerializable
{
    private int $dexId;
    private string $name;
    private string $illustrationPath;

    public function getDexId(): int
    {
        return $this->dexId;
    }

    public function setDexId(int $dexId): self
    {
        $this->dexId = $dexId;

        return $this;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

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

    public function jsonSerialize(): array
    {
        return [
            'dexId' => $this->getDexId(),
            'name' => $this->getName(),
            'illustrationPath' => $this->getIllustrationPath(),
        ];
    }
}
