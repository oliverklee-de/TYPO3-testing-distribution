<?php

declare(strict_types=1);

namespace OliverKlee\Gethdo\Tests\Functional;

use OliverKlee\Gethdo\Tests\Support\VersionCompatibilityTestsTrait;
use PHPUnit\Framework\Attributes\CoversNothing;
use TYPO3\TestingFramework\Core\Functional\FunctionalTestCase;

#[CoversNothing]
final class VersionCompatibilityTest extends FunctionalTestCase
{
    use VersionCompatibilityTestsTrait;

    protected array $testExtensionsToLoad = ['oliverklee/gethdo'];

    protected bool $initializeDatabase = false;
}
