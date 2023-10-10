<?php

namespace zbtnot\MonsterDb\Model;

// Represents a combination of a monster and the evolutionary requisite.
class EvolutionMonster implements \JsonSerializable
{
    private Requisite $requisite;
    private Monster|GraphicMonster $monster;

    public function getRequisite(): Requisite
    {
        return $this->requisite;
    }

    public function setRequisite(Requisite $requisite): self
    {
        $this->requisite = $requisite;

        return $this;
    }

    public function getMonster(): GraphicMonster|Monster
    {
        return $this->monster;
    }

    public function setMonster(GraphicMonster|Monster $monster): self
    {
        $this->monster = $monster;

        return $this;
    }

    /** @return array<string, mixed> */
    public function jsonSerialize(): array
    {
        return [
            'monster' => $this->getMonster(),
            'requisite' => $this->getRequisite(),
        ];
    }
}
