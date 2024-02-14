<?php

namespace Database\Seeders;

use App\Models\Position;
use App\Models\Staff;
use Illuminate\Database\Seeder;

class StaffPositionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $staffs = Staff::query()->get();

        foreach ($staffs as $staff) {
            $positionIds = Position::query()
                ->get()
                ->pluck('id')
                ->toArray();
            $staff->positions()->sync($positionIds);
        }
    }
}

