<?php

declare(strict_types=1);

$config = \TYPO3\CodingStandards\CsFixerConfig::create();
$config->setParallelConfig(\PhpCsFixer\Runner\Parallel\ParallelConfigFactory::detect());
$config->getFinder()->in(__DIR__ . '/src/extensions/gethdo')->in(__DIR__ . '/src/extensions/site-dev');
return $config;
