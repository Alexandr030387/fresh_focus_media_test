<?php

namespace App\Models;

use Database\Factories\PositionFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * App\Models\Position
 *
 * @property int $id
 * @property string $name
 * @property-read Collection<int, Staff> $staffs
 * @property-read Collection<int, PositionRate> $rates
 *
 * @method static PositionFactory factory(...$parameters)
 * @method static Builder|Position newModelQuery()
 * @method static Builder|Position newQuery()
 * @method static Builder|Position query()
 */
class Position extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'name',
    ];

    public $timestamps = false;

    protected $table = 'positions';

    public function staffs(): BelongsToMany
    {
        return $this->belongsToMany(Staff::class, 'staff_positions');
    }

    public function rates(): HasMany
    {
        return $this->hasMany(PositionRate::class);
    }
}
