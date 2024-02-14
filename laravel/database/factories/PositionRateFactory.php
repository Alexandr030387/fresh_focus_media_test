<?php

namespace Database\Factories;

use App\Models\Position;
use App\Models\PositionRate;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Database\Eloquent\Model;
/**
 * @method Collection<PositionRate>|PositionRate create(array $attributes = [], Model|null $parent = null)
 * @method Collection<PositionRate>|PositionRate make(array $attributes = [], Model|null $parent = null)
 */
class PositionRateFactory extends Factory
{
    public function definition(): array
    {
        return [
            'position_id' => Position::factory(),
            'type' => PositionRate::HOURLY,
            'regular' => rand(30, 100),
            'overtime' => rand(110, 200),
        ];
    }

    public function withPosition(Position $position = null): self
    {
        return $this->state([
            'position_id' => $position ? $position->getKey() : Position::factory(),
        ]);
    }

    public function withPositionRateType(string $type): self
    {
        return $this->state([
            'type' => $type
        ]);
    }

    public function withFixedRateType(): self
    {
        return $this->state([
            'type' => PositionRate::FIXED
        ]);
    }

    public function withHourlyRateType(): self
    {
        return $this->state([
            'type' => PositionRate::HOURLY
        ]);
    }
}
