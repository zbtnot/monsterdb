<?php

namespace zbtnot\MonsterDb\Http;

use Fig\Http\Message\StatusCodeInterface;
use Slim\Psr7\Factory\StreamFactory;
use Slim\Psr7\Headers;
use Slim\Psr7\Response;

// Helper class for proper JSON responses.
class JsonResponse extends Response
{
    public function __construct($body = '', Response $previousResponse = null)
    {
        $streamFactory = new StreamFactory();
        $headers = new Headers(
            array_merge(
                $previousResponse?->getHeaders() ?? [],
                ['Content-Type' => 'application/json']
            )
        );
        $body = json_encode($body);
        $bodyStream = $streamFactory->createStream($body);

        parent::__construct(
            $previousResponse?->getStatusCode() ?? StatusCodeInterface::STATUS_OK,
            $headers,
            $bodyStream
        );
    }
}
