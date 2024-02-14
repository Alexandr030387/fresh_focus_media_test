<?php

namespace Database\Seeders;

use App\Models\Job;
use App\Models\Location;
use Illuminate\Database\Seeder;

class JobLocationsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $jobs = Job::query()->get();

        foreach ($jobs as $job) {
            $locationIds = Location::query()
                ->inRandomOrder()
                ->take(20)
                ->get()
                ->pluck('id')
                ->toArray();
            $job->locations()->sync($locationIds);
        }
    }
}

