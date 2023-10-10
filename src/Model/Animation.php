<?php

namespace zbtnot\MonsterDb\Model;

class Animation implements \JsonSerializable
{
    private string $path;
    private string $mimeType;

    public function getPath(): string
    {
        return $this->path;
    }

    public function setPath(string $path): self
    {
        $this->path = $path;

        return $this;
    }

    public function getMimeType(): string
    {
        return $this->mimeType;
    }

    public function setMimeType(string $mimeType): self
    {
        $this->mimeType = $mimeType;

        return $this;
    }

    /** @return array<string, mixed> */
    public function jsonSerialize(): array
    {
        return [
            'path' => $this->getPath(),
            'mimeType' => $this->getMimeType(),
        ];
    }
}
