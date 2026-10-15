<?php

declare(strict_types=1);

namespace OliverKlee\Gethdo\Domain\Model;

use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;

class Project extends AbstractEntity
{
    protected string $title = '';

    protected ?\DateTime $deadline = null;

    /**
     * @var int<0, max>
     */
    protected int $ownerUid = 0;

    public function getTitle(): string
    {
        return $this->title;
    }

    public function setTitle(string $title): void
    {
        $this->title = $title;
    }

    public function getDeadline(): ?\DateTime
    {
        return $this->deadline;
    }

    public function setDeadline(?\DateTime $deadline): void
    {
        $this->deadline = $deadline;
    }

    /**
     * @return int<0, max>
     */
    public function getOwnerUid(): int
    {
        return $this->ownerUid;
    }

    /**
     * @param int<0, max> $ownerUid
     */
    public function setOwnerUid(int $ownerUid): void
    {
        if ($ownerUid <= 0) {
            throw new \InvalidArgumentException('User uid must be greater than zero.', 1792062388396);
        }

        $this->ownerUid = $ownerUid;
    }

}
