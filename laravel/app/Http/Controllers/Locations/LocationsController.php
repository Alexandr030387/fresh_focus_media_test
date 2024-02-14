<?php

namespace App\Http\Controllers\Locations;

use App\Http\Controllers\Controller;
use App\Models\Location;
use Illuminate\Http\JsonResponse;

class LocationsController extends Controller
{
    public function __invoke(): JsonResponse
    {
        return new JsonResponse([
            'data' => Location::query()->with('jobs', 'jobs.customers')->get(),
        ]);
    }
}
