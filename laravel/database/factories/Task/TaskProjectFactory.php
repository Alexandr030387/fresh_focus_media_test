<?php

namespace Database\Factories\Task;

use App\Models\Customer;
use App\Models\Job;
use App\Models\Location;
use app\Models\Task\Task;
use App\Models\Task\TaskProject;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method Collection<TaskProject>|TaskProject create(array $attributes = [], Model|null $parent = null)
 * @method Collection<TaskProject>|TaskProject make(array $attributes = [], Model|null $parent = null)
 */
class TaskProjectFactory extends Factory
{
    public function definition(): array
    {
        return [
            'task_id' => Task::factory(),
            'status' => 'active',
            'order_by' => 'tes order',
            'date' => '2024-02-15',
            'area' => 'Calgary',
            'customer_id' => Customer::factory(),
            'job_id' => Job::factory(),
            'location_id' => Location::factory(),
        ];
    }
}
