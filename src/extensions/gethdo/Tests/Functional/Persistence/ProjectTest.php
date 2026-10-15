<?php

declare(strict_types=1);

namespace OliverKlee\Gethdo\Tests\Functional\Persistence;

use Nette\Utils\DateTime;
use OliverKlee\Gethdo\Domain\Model\Project;
use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\Test;
use TYPO3\CMS\Extbase\Persistence\PersistenceManagerInterface;
use TYPO3\TestingFramework\Core\Functional\FunctionalTestCase;

#[CoversClass(Project::class)]
final class ProjectTest extends FunctionalTestCase
{
    protected array $testExtensionsToLoad = ['oliverklee/gethdo'];

    private PersistenceManagerInterface $persistenceManager;

    protected function setUp(): void
    {
        parent::setUp();

        $this->persistenceManager = $this->get(PersistenceManagerInterface::class);
    }

    #[Test]
    public function mapsAllScalarData(): void
    {
        $this->importCSVDataSet(__DIR__ . '/Fixtures/propertyMapping/ProjectWithAllScalarData.csv');

        $model = $this->persistenceManager->getObjectByIdentifier(1, Project::class);
        self::assertInstanceOf(Project::class, $model);

        self::assertSame('Project 1', $model->getTitle());
        self::assertEquals(new DateTime('2026-01-01'), $model->getDeadline());
        self::assertSame(1, $model->getOwnerUid());
    }

    #[Test]
    public function canBePersisted(): void
    {
        $model = new Project();
        $model->setTitle('Project 2');
        $model->setDeadline(new DateTime('2026-02-02'));
        $model->setOwnerUid(2);

        $this->persistenceManager->add($model);
        $this->persistenceManager->persistAll();

        $this->assertCSVDataSet(__DIR__ . '/Assertions/persistence/PersistedProject.csv');
    }

    #[Test]
    public function emptyDeadlineGetsPersistedAsNull(): void
    {
        $model = new Project();
        $model->setDeadline(null);

        $this->persistenceManager->add($model);
        $this->persistenceManager->persistAll();

        $this->assertCSVDataSet(__DIR__ . '/Assertions/persistence/PersistedProjectWithNullDeadline.csv');
    }
}
