<?php

use Slim\App;
use zbtnot\MonsterDb\Controller\MonsterController;

// Define all routes to Controller actions here.
return function (App $app) {
    $app->get('/', [MonsterController::class, 'indexAction']);
};
