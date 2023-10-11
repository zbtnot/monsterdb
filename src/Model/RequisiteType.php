<?php

namespace zbtnot\MonsterDb\Model;

enum RequisiteType: string
{
    case LEVEL_UP = 'Level Up';
    case ITEM = 'Item';
    case TRADE = 'Trade';

    public static function resolve(string $type): self
    {
        return match ($type) {
            'Level Up' => self::LEVEL_UP,
            'Item' => self::ITEM,
            'Trade' => self::TRADE,
            default => throw new \InvalidArgumentException("{$type} is not a valid type"),
        };
    }
}
