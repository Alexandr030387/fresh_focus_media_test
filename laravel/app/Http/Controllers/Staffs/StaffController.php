<?php

namespace App\Http\Controllers\Staffs;

use App\Http\Controllers\Controller;
use App\Models\Staff;
use Illuminate\Http\JsonResponse;

class StaffController extends Controller
{
    public function __invoke(): JsonResponse
    {
        return new JsonResponse([
            'data' => Staff::query()->with('positions', 'positions.rates')->get(),
        ]);
    }
}
