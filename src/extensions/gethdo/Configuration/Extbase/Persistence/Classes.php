<?php

declare(strict_types=1);

use OliverKlee\Gethdo\Domain\Model\Project;

return [
    Project::class => [
        'properties' => [
            'ownerUid' => ['fieldName' => 'owner'],
        ],
    ],
];
