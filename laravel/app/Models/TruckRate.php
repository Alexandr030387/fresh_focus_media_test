<?php

namespace App\Models;

use Database\Factories\TruckRateFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * App\Models\Truck
 *
 * @property int $id
 * @property int $truck_id
 * @property string $hourly
 * @property string $fixed
 * @property-read Truck $truck
 *
 * @method static TruckRateFactory factory(...$parameters)
 * @method static Builder|TruckRate newModelQuery()
 * @method static Builder|TruckRate newQuery()
 * @method static Builder|TruckRate query()
 */
class TruckRate extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
//        'truck_id',
        'hourly',
        'fixed',
    ];

    public $timestamps = false;

    protected $table = 'truck_rates';

    public function truck(): BelongsTo
    {
        return $this->belongsTo(Truck::class);
    }
}
