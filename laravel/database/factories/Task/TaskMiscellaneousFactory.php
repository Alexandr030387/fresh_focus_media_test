<?php

namespace Database\Factories\Task;

use app\Models\Task\Task;
use App\Models\Task\TaskMiscellaneous;
use App\Models\Truck;
use App\Models\TruckRate;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

/**
 * @method Collection<TaskMiscellaneous>|TaskMiscellaneous create(array $attributes = [], Model|null $parent = null)
 * @method Collection<TaskMiscellaneous>|TaskMiscellaneous make(array $attributes = [], Model|null $parent = null)
 */
class TaskMiscellaneousFactory extends Factory
{
    public function definition(): array
    {
        return [
            'task_id' => Task::factory(),
            'description' => Str::random(30),
            'cost' => 5.00,
            'price' => 10.00,
            'quantity' => 10,
            'line_total' =>  100.00,
        ];
    }
}
