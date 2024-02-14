<?php

namespace Database\Factories;

use App\Models\Customer;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method Collection<Customer>|Customer create(array $attributes = [], Model|null $parent = null)
 * @method Collection<Customer>|Customer make(array $attributes = [], Model|null $parent = null)
 */
class CustomerFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->company(),
        ];
    }
}
