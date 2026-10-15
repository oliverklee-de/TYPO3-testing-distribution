<?php

declare(strict_types=1);

return [
    'ctrl' => [
        'title' => 'LLL:EXT:gethdo/Resources/Private/Language/locallang_db.xlf:tx_gethdo_domain_model_project',
        'label' => 'title',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'delete' => 'deleted',
        'default_sortby' => 'title',
        'iconfile' => 'EXT:gethdo/Resources/Public/Icons/Project.svg',
        'searchFields' => 'title',
        'enablecolumns' => [
        ],
    ],
    'types' => [
        '1' => [
            'showitem'
            => '--div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:general,
                    title, deadline, owner,
               ',
        ],
    ],
    'palettes' => [
    ],
    'columns' => [
        'title' => [
            'label' => 'LLL:EXT:gethdo/Resources/Private/Language/locallang_db.xlf:tx_gethdo_domain_model_project.title',
            'config' => [
                'type' => 'input',
                'size' => 40,
                'max' => 255,
                'eval' => 'trim',
                'required' => true,
            ],
        ],
        'deadline' => [
            'label' => 'LLL:EXT:gethdo/Resources/Private/Language/locallang_db.xlf:tx_gethdo_domain_model_project.deadline',
            'config' => [
                'type' => 'datetime',
                'dbType' => 'date',
                'format' => 'date',
                'default' => null,
                'eval' => 'datetime',
                'nullable' => true,
            ],
        ],
        'owner' => [
            'label' => 'LLL:EXT:gethdo/Resources/Private/Language/locallang_db.xlf:tx_gethdo_domain_model_project.owner',
            'config' => [
                'type' => 'group',
                'allowed' => 'fe_users',
                'default' => 0,
                'size' => 1,
                'minitems' => 1,
                'maxitems' => 1,
                'hideSuggest' => true,
            ],
        ],
    ],
];
