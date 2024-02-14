<?php

namespace App\Http\Controllers\Jobs;

use App\Http\Controllers\Controller;
use App\Models\Job;
use Illuminate\Http\JsonResponse;

class JobsController extends Controller
{
    public function __invoke(): JsonResponse
    {
        return new JsonResponse([
            'data' => Job::query()->with('locations', 'customers')->get(),
        ]);
    }
}
