<?php

namespace Database\Seeders;

use App\Models\Truck;
use Illuminate\Database\Seeder;

class TruckSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $truckModels = [
            'Ford Maverick',
            'Ford F-150',
            'Ford Ranger',
            'Ram 1500',
            'Ram 1500 Classic',
            'Nissan Frontier',
            'Nissan Titan',
            'Jeep Gladiator',
            'GMC Canyon',
            'GMC Sierra 1500',
            'GMC Sierra 1500 Limited',
            'Chevrolet Colorado',
            'Chevrolet Silverado 1500',
            'Chevrolet Silverado 1500 LTD',
            'Toyota Tundra',
            'Toyota Tacoma',
            'Honda Ridgeline',
            'Hyundai Santa Cruz',
        ];

        foreach ($truckModels as $model) {
            Truck::factory()->create([
                'label' => $model,
            ]);
        }
    }
}

