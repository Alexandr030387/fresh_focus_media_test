<?php

namespace Database\Factories\Task;

use App\Models\Position;
use App\Models\PositionRate;
use App\Models\Staff;
use app\Models\Task\Task;
use App\Models\Task\TaskLabour;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method Collection<TaskLabour>|TaskLabour create(array $attributes = [], Model|null $parent = null)
 * @method Collection<TaskLabour>|TaskLabour make(array $attributes = [], Model|null $parent = null)
 */
class TaskLabourFactory extends Factory
{
    public function definition(): array
    {
        return [
            'uom_type' => 'hourly',
            'regular_rate' => 10.00,
            'overtime_rate' => 30.00,
            'regular_hours' => 1,
            'overtime_hours' => 3,
            'line_total' => 100.00,
            'task_id' => Task::factory(),
            'staff_id' => Staff::factory(),
            'position_id' => Position::factory(),
            'position_rate_id' => PositionRate::factory(),
        ];
    }
}
