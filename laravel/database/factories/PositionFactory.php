<?php

namespace Database\Factories;

use App\Models\Position;
use App\Models\PositionRate;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method Collection<Position>|Position create(array $attributes = [], Model|null $parent = null)
 * @method Collection<Position>|Position make(array $attributes = [], Model|null $parent = null)
 */
class PositionFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->jobTitle(),
        ];
    }

    public function withRate(): self
    {
        return $this->afterCreating(function (Position $position) {
            PositionRate::factory()
                ->withPosition($position)
                ->create();
        });
    }
}
