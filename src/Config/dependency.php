<?php

/**
 * This array manually maps dependencies for PHP-DI to inject into our services.
 */
$dependencies = [];

// Set up the database to be used by our repositories.
$db = DI\autowire(\PDO::class)->constructor('sqlite:' . __DIR__ . '/../../db.sqlite');
$dependencies[\PDO::class] = $db;

return $dependencies;
