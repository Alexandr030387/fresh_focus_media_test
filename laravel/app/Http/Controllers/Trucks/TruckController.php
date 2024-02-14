<?php

namespace App\Http\Controllers\Trucks;

use App\Http\Controllers\Controller;
use App\Models\Truck;
use Illuminate\Http\JsonResponse;

class TruckController extends Controller
{
    public function __invoke(): JsonResponse
    {
        return new JsonResponse([
            'data' => Truck::query()->with('rate')->get(),
        ]);
    }
}
