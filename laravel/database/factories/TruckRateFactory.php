<?php

namespace Database\Factories;

use App\Models\Truck;
use App\Models\TruckRate;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

/**
 * @method Collection<TruckRate>|TruckRate create(array $attributes = [], Model|null $parent = null)
 * @method Collection<TruckRate>|TruckRate make(array $attributes = [], Model|null $parent = null)
 */
class TruckRateFactory extends Factory
{
    public function definition(): array
    {
        return [
            'truck_id' => Truck::factory(),
            'hourly' => rand(30, 100),
            'fixed' => rand(110, 200),
        ];
    }

    public function withTruck(Truck $truck = null): self
    {
        return $this->state([
            'truck_id' => $truck ? $truck->getKey() : Truck::factory(),
        ]);
    }
}
