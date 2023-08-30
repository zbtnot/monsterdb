<?php

namespace zbtnot\MonsterDb\Model;

// Represents _how_ a move is learned
class MoveRequisite implements \JsonSerializable
{
    private RequisiteType $requisiteType;
    private string $description;

    public function getRequisiteType(): RequisiteType
    {
        return $this->requisiteType;
    }

    public function setRequisiteType(RequisiteType $requisiteType): self
    {
        $this->requisiteType = $requisiteType;

        return $this;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function jsonSerialize(): array
    {
        return [
            'requisiteType' => $this->requisiteType->value,
            'description' => $this->description,
        ];
    }
}
