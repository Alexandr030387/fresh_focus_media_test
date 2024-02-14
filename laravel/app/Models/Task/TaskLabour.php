<?php

namespace app\Models\Task;

use App\Models\Position;
use App\Models\PositionRate;
use App\Models\Staff;
use Database\Factories\Task\TaskLabourFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * App\Models\Task\TaskLabour
 *
 * @property int $id
 * @property int $staff_id
 * @property int $position_id
 * @property int $position_rate_id
 * @property string $uom_type
 * @property float $regular_rate
 * @property float $overtime_rate
 * @property float $regular_hours
 * @property float $overtime_hours
 * @property float $line_total
 * @property-read int $task_id
 * @property-read Task $task
 * @property-read Staff $staff
 * @property-read Position $position
 * @property-read PositionRate $positionRate
 *
 * @method static TaskLabourFactory factory(...$parameters)
 * @method static Builder|TaskLabour newModelQuery()
 * @method static Builder|TaskLabour newQuery()
 * @method static Builder|TaskLabour query()
 */
class TaskLabour extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'uom_type',
        'regular_rate',
        'overtime_rate',
        'regular_hours',
        'overtime_hours',
        'line_total',
        'task_id',
        'staff_id',
        'position_id',
        'position_rate_id',
    ];

    public $timestamps = false;

    protected $table = 'task_labours';

    public function task(): BelongsTo
    {
        return $this->belongsTo(Task::class);
    }

    public function staff(): HasOne
    {
        return $this->hasOne(Staff::class);
    }

    public function position(): HasOne
    {
        return $this->hasOne(Position::class);
    }

    public function positionRate(): HasOne
    {
        return $this->hasOne(PositionRate::class);
    }
}
