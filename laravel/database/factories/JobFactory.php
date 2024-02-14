<?php

namespace Database\Factories;

use App\Models\Job;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method Collection<Job>|Job create(array $attributes = [], Model|null $parent = null)
 * @method Collection<Job>|Job make(array $attributes = [], Model|null $parent = null)
 */
class JobFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->jobTitle(),
        ];
    }
}
