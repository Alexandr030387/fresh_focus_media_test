<?php

namespace Database\Seeders;

use App\Models\Customer;
use App\Models\Job;
use Illuminate\Database\Seeder;

class CustomerJobsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $customers = Customer::query()->get();

        foreach ($customers as $customer) {
            $jobIds = Job::query()
                ->inRandomOrder()
                ->take(20)
                ->get()
                ->pluck('id')
                ->toArray();
            $customer->jobs()->sync($jobIds);
        }
    }
}

