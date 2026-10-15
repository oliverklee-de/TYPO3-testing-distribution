<?php

declare(strict_types=1);

namespace OliverKlee\Gethdo\Tests\Functional;

use PHPUnit\Framework\Attributes\CoversNothing;
use PHPUnit\Framework\Attributes\Test;
use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;
use TYPO3\TestingFramework\Core\Functional\FunctionalTestCase;

#[CoversNothing]
final class ExtensionLoadedTest extends FunctionalTestCase
{
    protected array $testExtensionsToLoad = ['oliverklee/gethdo'];

    protected bool $initializeDatabase = false;

    #[Test]
    public function isLoadedWithExtensionKey(): void
    {
        self::assertTrue(ExtensionManagementUtility::isLoaded('gethdo'));
    }

    #[Test]
    public function isLoadedWithComposerPackageName(): void
    {
        self::assertTrue(ExtensionManagementUtility::isLoaded('oliverklee/gethdo'));
    }
}
