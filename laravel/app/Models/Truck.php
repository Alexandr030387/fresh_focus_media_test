<?php

namespace App\Models;

use Database\Factories\TruckFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * App\Models\Truck
 *
 * @property int $id
 * @property string $name
 * @property-read TruckRate $rate
 *
 * @method static TruckFactory factory(...$parameters)
 * @method static Builder|Truck newModelQuery()
 * @method static Builder|Truck newQuery()
 * @method static Builder|Truck query()
 */
class Truck extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'label',
    ];

    public $timestamps = false;

    protected $table = 'trucks';

    public function rate(): HasOne
    {
        return $this->hasOne(TruckRate::class);
    }
}
