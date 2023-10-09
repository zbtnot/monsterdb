<?php

namespace zbtnot\MonsterDb\Repository;

use DI\Attribute\Inject;

abstract class Repository
{
    #[Inject]
    protected \PDO $pdo;

    protected function generatePaginationString(?int $limit, ?int $offset): string
    {
        $str = '';
        if ($limit !== null) {
            $str .= ' LIMIT :limit ';

            if ($offset !== null) {
                $str .= ' OFFSET :offset ';
            }
        }

        return $str;
    }

    /** @return array<string,int> */
    protected function generatePaginationParameters(?int $limit, ?int $offset): array
    {
        $arr = [];
        if ($limit !== null) {
            $arr[':limit'] = $limit;

            if ($offset !== null) {
                $arr[':offset'] = $offset;
            }
        }

        return $arr;
    }
}
