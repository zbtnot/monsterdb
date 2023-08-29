<?php

namespace zbtnot\MonsterDb\Model;

class Type implements \JsonSerializable
{
    private string $name;

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function jsonSerialize(): array
    {
        return [
            'name' => $this->name,
        ];
    }
}
