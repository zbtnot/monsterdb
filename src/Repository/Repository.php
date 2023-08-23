<?php

namespace zbtnot\MonsterDb\Repository;

use DI\Attribute\Inject;

abstract class Repository
{
    #[Inject]
    protected \PDO $pdo;
}
