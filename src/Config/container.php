<?php

use DI\ContainerBuilder;

require __DIR__ . '/../../vendor/autoload.php';

// Register container dependencies
$dependencies = require __DIR__ . '/dependency.php';
$containerBuilder = new ContainerBuilder();
$containerBuilder->addDefinitions($dependencies);

// Attributes allow injection into our classes without blowing up the size of our constructors.
$containerBuilder->useAttributes(true);

return $containerBuilder->build();
