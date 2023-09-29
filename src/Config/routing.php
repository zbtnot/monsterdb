<?php

use Slim\App;
use zbtnot\MonsterDb\Controller\LocationController;
use zbtnot\MonsterDb\Controller\MonsterController;
use zbtnot\MonsterDb\Controller\MoveController;

// Define all routes to Controller actions here.
return function (App $app) {
    $app->get('/api/monster', [MonsterController::class, 'fetchMonstersAction']);
    $app->get('/api/monster/{id}', [MonsterController::class, 'fetchMonsterByDexId']);
    $app->get('/api/move', [MoveController::class, 'fetchMovesAction']);
    $app->get('/api/move/{id}', [MoveController::class, 'fetchMoveByIdAction']);
    $app->get('/api/location', [LocationController::class, 'fetchLocationsAction']);

    // index action is the last route so non-api calls can fall-through to vue-router
    $app->get('/{path:.*}', [MonsterController::class, 'indexAction']);
};
