<?php

declare(strict_types=1);

namespace OliverKlee\Gethdo\Domain\Repository;

use OliverKlee\Gethdo\Domain\Model\Project;
use TYPO3\CMS\Extbase\Persistence\QueryInterface;
use TYPO3\CMS\Extbase\Persistence\QueryResultInterface;
use TYPO3\CMS\Extbase\Persistence\Repository;

/**
 * @extends Repository<Project>
 */
class ProjectRepository extends Repository
{
    protected $defaultOrderings = ['title' => QueryInterface::ORDER_ASCENDING];

    /**
     * @param positive-int $ownerUid
     *
     * @return QueryResultInterface<Project>
     */
    public function findByOwnerUid(int $ownerUid): QueryResultInterface
    {
        $query = $this->createQuery();
        $query->setQuerySettings($query->getQuerySettings()->setRespectStoragePage(false));
        $query->matching($query->equals('ownerUid', $ownerUid));

        return $query->execute();
    }
}
