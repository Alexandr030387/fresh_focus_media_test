<?php

namespace App\Http\Controllers\Jobs;

use App\Http\Controllers\Controller;
use App\Models\Job;
use Illuminate\Http\JsonResponse;

class JobController extends Controller
{
    public function __invoke(int $jobId): JsonResponse
    {
        return new JsonResponse([
            'data' => Job::with('locations', 'customers')->find($jobId),
        ]);
    }
}
