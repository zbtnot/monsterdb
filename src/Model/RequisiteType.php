<?php

namespace zbtnot\MonsterDb\Model;

enum RequisiteType: string
{
    case LEVEL_UP = 'Level Up';
    case MACHINE = 'Item';

    public static function resolve(string $type): self
    {
        return match($type) {
            'Level Up' => self::LEVEL_UP,
            'Item' => self::MACHINE,
        };
    }
}
