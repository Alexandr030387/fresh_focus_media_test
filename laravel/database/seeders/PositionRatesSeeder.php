<?php

namespace Database\Seeders;

use App\Models\Position;
use App\Models\PositionRate;
use Illuminate\Database\Seeder;

class PositionRatesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        foreach (Position::query()->get() as $position) {
            PositionRate::factory()
                ->withHourlyRateType()
                ->withPosition($position)
                ->create();
            PositionRate::factory()
                ->withFixedRateType()
                ->withPosition($position)
                ->create();
        }
    }
}

