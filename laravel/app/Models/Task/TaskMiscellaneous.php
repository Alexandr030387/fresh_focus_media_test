<?php

namespace app\Models\Task;

use Database\Factories\Task\TaskMiscellaneousFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * App\Models\Task\TaskMiscellaneous
 *
 * @property int $id
 * @property int $task_id
 * @property string $description
 * @property float $cost
 * @property float $price
 * @property int $quantity
 * @property float $line_total
 * @property-read Task $task
 *
 * @method static TaskMiscellaneousFactory factory(...$parameters)
 * @method static Builder|TaskMiscellaneous newModelQuery()
 * @method static Builder|TaskMiscellaneous newQuery()
 * @method static Builder|TaskMiscellaneous query()
 */
class TaskMiscellaneous extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'task_id',
        'description',
        'cost',
        'price',
        'quantity',
        'line_total',
    ];

    public $timestamps = false;

    protected $table = 'task_miscellaneous';

    public function task(): BelongsTo
    {
        return $this->belongsTo(Task::class);
    }
}
