<?php

declare(strict_types=1);

namespace OliverKlee\Gethdo\Tests\Unit;

use OliverKlee\Gethdo\Tests\Support\VersionCompatibilityTestsTrait;
use PHPUnit\Framework\Attributes\CoversNothing;
use TYPO3\TestingFramework\Core\Unit\UnitTestCase;

#[CoversNothing]
final class VersionCompatibilityTest extends UnitTestCase
{
    use VersionCompatibilityTestsTrait;
}
