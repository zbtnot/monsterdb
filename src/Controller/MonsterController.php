<?php

namespace zbtnot\MonsterDb\Controller;

use Slim\Psr7\Request;
use Slim\Psr7\Response;

class MonsterController extends Controller
{

    public function indexAction(Request $request, Response $response): Response
    {
        $response->getBody()->write('Hello Monsterdb');

        return $response;
    }
}
