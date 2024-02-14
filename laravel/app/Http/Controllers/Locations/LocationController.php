<?php

namespace App\Http\Controllers\Locations;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Location;
use Illuminate\Http\JsonResponse;

class LocationController extends Controller
{
    public function __invoke(int $locationId): JsonResponse
    {
        $data = Location::with('jobs')->find($locationId);

        $customers = Customer::with('jobs')
            ->whereHas('jobs', function ($query) use ($data) {
                $query->whereIn(
                    'jobs.id',
                    $data->jobs->pluck('id')->toArray()
                );
            })
            ->get();

        return new JsonResponse([
            'jobs' => $data->jobs,
            'customers' => $customers,
        ]);
    }
}
