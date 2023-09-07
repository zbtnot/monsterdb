<?php

namespace zbtnot\MonsterDb\Controller;

use DI\Attribute\Inject;
use Psr\Log\LoggerInterface;

/**
 * The base Controller from which all others inherit. Place common dependencies here.
 */
abstract class Controller
{
    // Attribute to inject the logger for use by all child controllers.
    #[Inject]
    protected LoggerInterface $logger;

    protected function view(string $path): string
    {
        $file = __DIR__ . '/../View/' . $path;
        if (!file_exists($file)) {
            throw new \RuntimeException("Cannot find the file specified at {$file}");
        }

        return file_get_contents($file);
    }
}
