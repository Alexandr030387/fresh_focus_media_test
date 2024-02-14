<?php

namespace app\Models\Task;

use App\Models\Truck;
use App\Models\TruckRate;
use Database\Factories\Task\TaskTruckFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * App\Models\Task\TaskTruck
 *
 * @property int $id
 * @property-read int $task_id
 * @property int $truck_id
 * @property int $truck_rate_id
 * @property int $quantity
 * @property string $uom_type
 * @property float $rate
 * @property float $line_total
 * @property-read Task $task
 * @property-read Truck $truck
 * @property-read TruckRate $truckRate
 *
 * @method static TaskTruckFactory factory(...$parameters)
 * @method static Builder|TaskTruck newModelQuery()
 * @method static Builder|TaskTruck newQuery()
 * @method static Builder|TaskTruck query()
 */
class TaskTruck extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'task_id',
        'truck_id',
        'truck_rate_id',
        'quantity',
        'uom_type',
        'rate',
        'line_total',
    ];

    public $timestamps = false;

    protected $table = 'task_trucks';

    public function task(): BelongsTo
    {
        return $this->belongsTo(Task::class);
    }

    public function truck(): HasOne
    {
        return $this->hasOne(Truck::class);
    }

    public function truckRate(): HasOne
    {
        return $this->hasOne(TruckRate::class);
    }
}
