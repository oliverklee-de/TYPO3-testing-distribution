<?php

declare(strict_types=1);

namespace OliverKlee\Gethdo\Tests\Unit\Domain\Model;

use OliverKlee\Gethdo\Domain\Model\Project;
use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\Attributes\DataProvider;
use PHPUnit\Framework\Attributes\Test;
use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;
use TYPO3\TestingFramework\Core\Unit\UnitTestCase;

#[CoversClass(Project::class)]
final class ProjectTest extends UnitTestCase
{
    private Project $subject;

    protected function setUp(): void
    {
        parent::setUp();

        $this->subject = new Project();
    }

    #[Test]
    public function isAbstractEntity(): void
    {
        self::assertInstanceOf(AbstractEntity::class, $this->subject);
    }

    #[Test]
    public function getTitleInitiallyReturnsEmptyString(): void
    {
        self::assertSame('', $this->subject->getTitle());
    }

    #[Test]
    public function setTitleSetsTitle(): void
    {
        $value = 'Club-Mate';
        $this->subject->setTitle($value);

        self::assertSame($value, $this->subject->getTitle());
    }

    #[Test]
    public function getDeadlineInitiallyReturnsNull(): void
    {
        self::assertNull($this->subject->getDeadline());
    }

    #[Test]
    public function setDeadlineSetsDeadline(): void
    {
        $model = new \DateTime();
        $this->subject->setDeadline($model);

        self::assertSame($model, $this->subject->getDeadline());
    }

    #[Test]
    public function getOwnerUidInitiallyReturnsZero(): void
    {
        self::assertSame(0, $this->subject->getOwnerUid());
    }

    #[Test]
    public function setOwnerUidSetsOwnerUid(): void
    {
        $value = 123456;
        $this->subject->setOwnerUid($value);

        self::assertSame($value, $this->subject->getOwnerUid());
    }

    #[Test]
    #[DataProvider('invalidOwnerUidsDataProvider')]
    public function setOwnerUidWithInvalidOwnerUidThrowsException(int $invalidOwnerUid): void
    {
        $this->expectException(\InvalidArgumentException::class);
        $this->expectExceptionMessage('User uid must be greater than zero.');
        $this->expectExceptionCode(1792062388396);

        $this->subject->setOwnerUid($invalidOwnerUid);
    }

    public static function invalidOwnerUidsDataProvider(): array
    {
        return [
            'zero' => [0],
            'negative' => [-1],
        ];
    }
}
