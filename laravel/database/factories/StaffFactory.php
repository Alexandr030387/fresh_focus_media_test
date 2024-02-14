<?php

namespace Database\Factories;

use App\Models\Staff;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method Collection<Staff>|Staff create(array $attributes = [], Model|null $parent = null)
 * @method Collection<Staff>|Staff make(array $attributes = [], Model|null $parent = null)
 */
class StaffFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->company(),
        ];
    }
}
