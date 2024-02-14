<?php

namespace Database\Factories;

use App\Models\Truck;
use App\Models\TruckRate;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

/**
 * @method Collection<Truck>|Truck create(array $attributes = [], Model|null $parent = null)
 * @method Collection<Truck>|Truck make(array $attributes = [], Model|null $parent = null)
 */
class TruckFactory extends Factory
{
    public function definition(): array
    {
        return [
            'label' => Str::random(20),
        ];
    }

    public function withRate(): self
    {
        return $this->afterCreating(function (Truck $truck) {
            TruckRate::factory()
                ->withTruck($truck)
                ->create();
        });
    }
}
