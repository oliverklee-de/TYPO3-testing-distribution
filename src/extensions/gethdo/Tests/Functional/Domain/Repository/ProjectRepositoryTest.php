<?php

declare(strict_types=1);

namespace OliverKlee\Gethdo\Tests\Functional\Domain\Repository;

use OliverKlee\Gethdo\Domain\Model\Project;
use OliverKlee\Gethdo\Domain\Repository\ProjectRepository;
use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\Test;
use TYPO3\CMS\Extbase\Persistence\Repository;
use TYPO3\TestingFramework\Core\Functional\FunctionalTestCase;

#[CoversClass(ProjectRepository::class)]
final class ProjectRepositoryTest extends FunctionalTestCase
{
    protected array $testExtensionsToLoad = ['oliverklee/gethdo'];

    private ProjectRepository $subject;

    protected function setUp(): void
    {
        parent::setUp();

        $this->subject = $this->get(ProjectRepository::class);
    }

    #[Test]
    public function isRepository(): void
    {
        self::assertInstanceOf(Repository::class, $this->subject);
    }

    #[Test]
    public function findByUidForExistingRecordReturnsModel(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/findByUid/Project.csv');

        $model = $this->subject->findByUid(1);

        self::assertInstanceOf(Project::class, $model);
    }

    #[Test]
    public function findByOwnerUidReturnsModelsOwnedByOwner(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/findByOwnerUid/ProjectsOwnedByOwner.csv');

        $result = $this->subject->findByOwnerUid(1);

        self::assertCount(2, $result);
    }

    #[Test]
    public function findByOwnerUidIgnoresNotOwnedByOwner(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/findByOwnerUid/ProjectsOwnedByOwner.csv');

        $result = $this->subject->findByOwnerUid(2);

        self::assertEmpty($result);
    }

    #[Test]
    public function findByOwnerUidSortsByTitleInAscendingOrder(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/findByOwnerUid/TwoProjectsWithOwner.csv');

        $result = $this->subject->findByOwnerUid(1);

        $model = $result->offsetGet(0);
        self::assertInstanceOf(Project::class, $model);
        self::assertSame('Projekt 1', $model->getTitle());
    }

    #[Test]
    public function findByOwnerUidIgnoresStoragePid(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/findByOwnerUid/ProjectWithOwnerOnPage.csv');

        $result = $this->subject->findByOwnerUid(1);

        self::assertCount(1, $result);
    }
}
