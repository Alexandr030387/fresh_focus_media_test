<?php

namespace app\Models\Task;

use App\Models\Customer;
use App\Models\Job;
use App\Models\Location;
use Database\Factories\Task\TaskProjectFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * App\Models\Task\TaskProject
 *
 * @property int $id
 * @property string $status
 * @property string $order_by
 * @property string $area
 * @property \Illuminate\Support\Carbon|null $date
 * @property int $customer_id
 * @property int $job_id
 * @property int $position_id
 * @property int $task_id
 * @property-read Task $task
 * @property-read Customer $customer
 * @property-read Job $job
 * @property-read Location $location
 *
 * @method static TaskProjectFactory factory(...$parameters)
 * @method static Builder|TaskProject newModelQuery()
 * @method static Builder|TaskProject newQuery()
 * @method static Builder|TaskProject query()
 */
class TaskProject extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'task_id',
        'status',
        'order_by',
        'date',
        'area',
        'customer_id',
        'job_id',
        'location_id',
    ];

    public $timestamps = false;

    protected $table = 'task_projects';

    public function customer(): HasOne
    {
        return $this->hasOne(Customer::class);
    }

    public function job(): HasOne
    {
        return $this->hasOne(Job::class);
    }

    public function location(): HasOne
    {
        return $this->hasOne(Location::class);
    }

    public function task(): BelongsTo
    {
        return $this->belongsTo(Task::class);
    }
}
