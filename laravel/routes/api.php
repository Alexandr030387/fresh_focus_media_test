<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Customers\CustomerController;
use App\Http\Controllers\Jobs\JobsController;
use App\Http\Controllers\Jobs\JobController;
use App\Http\Controllers\Locations\LocationsController;
use App\Http\Controllers\Locations\LocationController;
use App\Http\Controllers\Staffs\StaffController;
use App\Http\Controllers\Tasks\TaskStoreController;
use App\Http\Controllers\Trucks\TruckController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get(
    '/customers',
    CustomerController::class,
)->name('api.customers');

Route::get(
    '/jobs',
    JobsController::class,
)->name('api.jobs');

Route::get(
    '/job/{jobId}',
    JobController::class,
)->name('api.job');

Route::get(
    '/locations',
    LocationsController::class,
)->name('api.locations');

Route::get(
    '/location/{locationId}',
    LocationController::class,
)->name('api.location');

Route::get(
    '/staffs',
    StaffController::class,
)->name('api.stuffs');

Route::get(
    '/trucks',
    TruckController::class,
)->name('api.trucks');

Route::post(
    '/task/store',
    TaskStoreController::class,
)->name('api.task.store');
