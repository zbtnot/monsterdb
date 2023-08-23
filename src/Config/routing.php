<?php

use Slim\App;
use zbtnot\MonsterDb\Controller\MonsterController;

// Define all routes to Controller actions here.
return function (App $app) {
    $app->get('/api/monster', [MonsterController::class, 'fetchMonstersAction']);

    // index action is the last route so non-api calls can fall-through to vue-router
    $app->get('/{path:.*}', [MonsterController::class, 'indexAction']);
};
