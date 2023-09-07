<?php

/**
 * This array manually maps dependencies for PHP-DI to inject into our services.
 */

use Monolog\Handler\StreamHandler;
use Monolog\Logger;
use Psr\Log\LoggerInterface;
use Symfony\Component\Dotenv\Dotenv;

$dependencies = [];

// Load environment variables.
$dotenv = new Dotenv();
$dotenv->load(__DIR__ . '/../../.env');

// Set up the database to be used by our repositories.
$db = DI\autowire(\PDO::class)->constructor('sqlite:' . __DIR__ . '/../../db.sqlite');
$dependencies[\PDO::class] = $db;

// Set up the logger to be used by our services.
// The default file stream handler. Logs up to debug level.
$streamHandler = DI\autowire(StreamHandler::class)
    ->constructor(__DIR__ . '/../../var/log/monsterdb.log');

// The actual logger instance, this will autowire into any PSR LoggerInterface
$logger = DI\autowire(Logger::class)
    ->constructor('monsterdb_logger')
    ->method('pushHandler', $streamHandler);

$dependencies[LoggerInterface::class] = $logger;

return $dependencies;
