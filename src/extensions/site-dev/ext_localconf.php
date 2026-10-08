<?php

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;

ExtensionManagementUtility::addUserTSConfig(
    '@import "EXT:site_dev/Configuration/user.tsconfig"',
);
