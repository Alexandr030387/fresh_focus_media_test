<?php

namespace App\Http\Controllers\Customers;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use Illuminate\Http\JsonResponse;

class CustomerController extends Controller
{
    public function __invoke(): JsonResponse
    {
        return new JsonResponse([
            'data' => Customer::query()->with('jobs', 'jobs.locations')->get(),
        ]);
    }
}
