<?php

namespace zbtnot\MonsterDb\Model;

class DetailedMove implements \JsonSerializable
{
    private string $animationPath;

    /** @var GraphicMonster[] */
    private array $monsters;

    public function __construct(private Move $move)
    {
    }

    public function getMove(): Move
    {
        return $this->move;
    }

    public function getAnimationPath(): string
    {
        return $this->animationPath;
    }

    public function setAnimationPath(string $animationPath): self
    {
        $this->animationPath = $animationPath;

        return $this;
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
            'animationPath' => $this->getAnimationPath(),
            'monsters' => $this->getMonsters(),
        ];

        return array_merge($fields, $this->move->jsonSerialize());
    }
}
