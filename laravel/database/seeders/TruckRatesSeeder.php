<?php

namespace Database\Seeders;

use App\Models\Truck;
use App\Models\TruckRate;
use Illuminate\Database\Seeder;

class TruckRatesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        foreach (Truck::query()->get() as $model) {
            TruckRate::factory()
                ->withTruck($model)
                ->create();
        }
    }
}

