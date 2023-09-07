<?php

use Psr\Log\LoggerInterface;
use Slim\Factory\AppFactory;

require_once __DIR__ . '/../vendor/autoload.php';

// Instantiate the application.
$container = require_once __DIR__ . '/../src/Config/container.php';
AppFactory::setContainer($container);
$app = AppFactory::create();

// Register routes.
$routes = require_once __DIR__ . '/../src/Config/routing.php';
$routes($app);

// Add Routing Middleware and error handling.
$logger = $container->get(LoggerInterface::class);
$app->addRoutingMiddleware();
$app->addErrorMiddleware(
    displayErrorDetails: $_ENV['MODE'] === 'dev',
    logErrors: true,
    logErrorDetails: true,
    logger: $logger
);

// Add Body Parsing Middleware, this saves us a step of decoding json content-types.
$app->addBodyParsingMiddleware();

$app->run();
