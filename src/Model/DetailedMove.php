<?php

namespace zbtnot\MonsterDb\Model;

class DetailedMove implements \JsonSerializable
{
    /** @var Animation[] */
    private array $animations;

    /** @var GraphicMonster[] */
    private array $monsters;

    public function __construct(private readonly Move $move)
    {
    }

    /** @return Animation[] */
    public function getAnimations(): array
    {
        return $this->animations;
    }

    /** @param Animation[] $animations */
    public function setAnimations(array $animations): self
    {
        $this->animations = $animations;

        return $this;
    }

    public function getMove(): Move
    {
        return $this->move;
    }

    /** @return GraphicMonster[] */
    public function getMonsters(): array
    {
        return $this->monsters;
    }

    /** @param GraphicMonster[] $monsters */
    public function setMonsters(array $monsters): self
    {
        $this->monsters = $monsters;

        return $this;
    }

    public function jsonSerialize(): array
    {
        $fields = [
            'animations' => $this->getAnimations(),
            'monsters' => $this->getMonsters(),
        ];

        return array_merge($fields, $this->move->jsonSerialize());
    }
}
