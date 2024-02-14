<?php

namespace Database\Factories\Task;

use App\Models\Task\Task;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

/**
 * @method Collection<Task>|Task create(array $attributes = [], Model|null $parent = null)
 * @method Collection<Task>|Task make(array $attributes = [], Model|null $parent = null)
 */
class TaskFactory extends Factory
{
    public function definition(): array
    {
        return [
            'description' => Str::random(20),
        ];
    }
}
