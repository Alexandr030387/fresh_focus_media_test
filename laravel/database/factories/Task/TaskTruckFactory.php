<?php

namespace Database\Factories\Task;

use app\Models\Task\Task;
use App\Models\Task\TaskTruck;
use App\Models\Truck;
use App\Models\TruckRate;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method Collection<TaskTruck>|TaskTruck create(array $attributes = [], Model|null $parent = null)
 * @method Collection<TaskTruck>|TaskTruck make(array $attributes = [], Model|null $parent = null)
 */
class TaskTruckFactory extends Factory
{
    public function definition(): array
    {
        return [
            'task_id' => Task::factory(),
            'truck_id' => Truck::factory(),
            'truck_rate_id' => TruckRate::factory(),
            'quantity' => 10,
            'uom_type' =>'hourly',
            'rate' => 10.00,
            'line_total' => 100.00,
        ];
    }
}
