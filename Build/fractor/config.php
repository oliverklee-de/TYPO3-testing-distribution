<?php

declare(strict_types=1);

use a9f\Fractor\Configuration\FractorConfiguration;
use a9f\Fractor\ValueObject\Indent;
use a9f\FractorTypoScript\Configuration\TypoScriptProcessorOption;
use a9f\FractorXliff\Configuration\XliffProcessorOption;
use a9f\FractorXml\Configuration\XmlProcessorOption;
use a9f\Typo3Fractor\Set\Typo3LevelSetList;
use Helmich\TypoScriptParser\Parser\Printer\PrettyPrinterConditionTermination;
use Helmich\TypoScriptParser\Parser\Printer\PrettyPrinterConfiguration;

return FractorConfiguration::configure()
    ->withPaths([
        __DIR__ . '/../../composer.json',
        __DIR__ . '/../../config',
        __DIR__ . '/../../src',
    ])
    ->withSets([
        Typo3LevelSetList::UP_TO_TYPO3_14,
    ])
    ->withSkip([
        // You might want to skip node_modules or any other folder or fractor rule here
        //__DIR__ . '/node_modules',
    ])
    ->withOptions([
        TypoScriptProcessorOption::ADD_CLOSING_GLOBAL => false,
        TypoScriptProcessorOption::CONDITION_TERMINATION => PrettyPrinterConditionTermination::Keep,
        TypoScriptProcessorOption::INCLUDE_EMPTY_LINE_BREAKS => true,
        TypoScriptProcessorOption::INDENT_CHARACTER => PrettyPrinterConfiguration::INDENTATION_STYLE_SPACES,
        TypoScriptProcessorOption::INDENT_CONDITIONS => true,
        TypoScriptProcessorOption::INDENT_SIZE => 2,
        XliffProcessorOption::INDENT_CHARACTER => Indent::STYLE_SPACE,
        XliffProcessorOption::INDENT_SIZE => 2,
        XmlProcessorOption::INDENT_CHARACTER => Indent::STYLE_SPACE,
        XmlProcessorOption::INDENT_SIZE => 4,
    ]);
