<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(): void
    {
        $this->call([
            CustomerSeeder::class,
            JobSeeder::class,
            LocationSeeder::class,
            CustomerJobsSeeder::class,
            JobLocationsSeeder::class,
            TruckSeeder::class,
            TruckRatesSeeder::class,
            StaffSeeder::class,
            PositionSeeder::class,
            PositionRatesSeeder::class,
            StaffPositionsSeeder::class,
        ]);
    }
}
