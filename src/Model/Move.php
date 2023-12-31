<?php

namespace zbtnot\MonsterDb\Model;

// Represents a move and its requirement to be learned
class Move implements \JsonSerializable
{
    private int $id;
    private string $name;
    private int $pp;
    private ?int $power;
    private ?int $accuracy;
    private Type $type;
    private ?Requisite $requisite;

    public function getId(): int
    {
        return $this->id;
    }

    public function setId(int $id): self
    {
        $this->id = $id;

        return $this;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setPp(int $pp): self
    {
        $this->pp = $pp;

        return $this;
    }

    public function getPp(): int
    {
        return $this->pp;
    }

    public function setPower(?int $power): self
    {
        $this->power = $power;

        return $this;
    }

    public function getPower(): ?int
    {
        return $this->power;
    }

    public function setAccuracy(?int $accuracy): self
    {
        $this->accuracy = $accuracy;

        return $this;
    }

    public function getAccuracy(): ?int
    {
        return $this->accuracy;
    }

    public function setType(Type $type): self
    {
        $this->type = $type;

        return $this;
    }

    public function getType(): Type
    {
        return $this->type;
    }

    public function getRequisite(): ?Requisite
    {
        return $this->requisite ?? null;
    }

    public function setRequisite(?Requisite $requisite): self
    {
        $this->requisite = $requisite;

        return $this;
    }

    /** @return array<string, mixed> */
    public function jsonSerialize(): array
    {
        return [
            'id' => $this->getId(),
            'name' => $this->getName(),
            'pp' => $this->getPp(),
            'power' => $this->getPower(),
            'accuracy' => $this->getAccuracy(),
            'type' => $this->type->getName(),
            'requisite' => $this->getRequisite(),
        ];
    }
}
