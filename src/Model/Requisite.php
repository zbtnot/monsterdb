<?php

namespace zbtnot\MonsterDb\Model;

// Represents a type of requirement and how it is achieved
class Requisite implements \JsonSerializable
{
    private RequisiteType $type;
    private mixed $contents;

    public function getType(): RequisiteType
    {
        return $this->type;
    }

    public function setType(RequisiteType $requisiteType): self
    {
        $this->type = $requisiteType;

        return $this;
    }

    public function getContents(): mixed
    {
        return $this->contents;
    }

    public function setContents(mixed $contents): self
    {
        $this->contents = $contents;

        return $this;
    }

    public function jsonSerialize(): array
    {
        return [
            'type' => $this->getType()->value,
            'contents' => $this->getContents(),
        ];
    }
}
