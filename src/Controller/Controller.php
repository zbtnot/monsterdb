<?php

namespace zbtnot\MonsterDb\Controller;

/**
 * The base Controller from which all others inherit. Place common dependencies here.
 */
abstract class Controller
{
    protected function view(string $path): string
    {
        $file = __DIR__ . '/../View/' . $path;
        if (!file_exists($file)) {
            throw new \RuntimeException("Cannot find the file specified at {$file}");
        }

        return file_get_contents($file);
    }
}
