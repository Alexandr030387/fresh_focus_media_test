<?php

namespace Database\Factories;

use App\Models\Location;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method Collection<Location>|Location create(array $attributes = [], Model|null $parent = null)
 * @method Collection<Location>|Location make(array $attributes = [], Model|null $parent = null)
 */
class LocationFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->streetAddress(),
        ];
    }
}
