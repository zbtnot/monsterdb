<?php

namespace zbtnot\MonsterDb\Model;

class Monster implements \JsonSerializable
{
    private int $id;
    private int $dexId;
    private string $name;
    private float $height;
    private float $weight;

    public function getId(): int
    {
        return $this->id;
    }

    public function setId(int $id): self
    {
        $this->id = $id;

        return $this;
    }

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

    public function getHeight(): float
    {
        return $this->height;
    }

    public function setHeight(float $height): self
    {
        $this->height = $height;

        return $this;
    }

    public function getWeight(): float
    {
        return $this->weight;
    }

    public function setWeight(float $weight): self
    {
        $this->weight = $weight;

        return $this;
    }

    public function jsonSerialize(): array
    {
        return [
            'dexId' => $this->getDexId(),
            'name' => $this->getName(),
            'weight' => $this->getWeight(),
            'height' => $this->getHeight(),
        ];
    }
}
