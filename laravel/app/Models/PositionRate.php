<?php

namespace App\Models;

use Database\Factories\PositionRateFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * App\Models\PositionRate
 *
 * @property int $id
 * @property int $position_id
 * @property float $regular
 * @property float $overtime
 * @property-read Position $position
 *
 * @method static PositionRateFactory factory(...$parameters)
 * @method static Builder|PositionRate newModelQuery()
 * @method static Builder|PositionRate newQuery()
 * @method static Builder|PositionRate query()
 */
class PositionRate extends Model
{
    use HasFactory;

    const HOURLY = 'hourly';

    const FIXED = 'fixed';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'type',
        'regular',
        'overtime',
    ];

    public $timestamps = false;

    protected $table = 'position_rates';

    public function position(): BelongsTo
    {
        return $this->belongsTo(
            Position::class,
            'position_id',
            'id'
        );
    }
}
