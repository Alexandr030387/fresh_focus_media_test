<?php

namespace App\Models;

use app\Models\Task\TaskProject;
use Database\Factories\JobFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

/**
 * App\Models\Job
 *
 * @property int $id
 * @property string $name
 * @property-read Collection<int, Customer> $customers
 * @property-read Collection<int, Location> $locations
 * @property-read TaskProject $project
 *
 * @method static JobFactory factory(...$parameters)
 * @method static Builder|Job newModelQuery()
 * @method static Builder|Job newQuery()
 * @method static Builder|Job query()
 */
class Job extends Model
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

    protected $table = 'jobs';

    public function customers(): BelongsToMany
    {
        return $this->belongsToMany(Customer::class, 'customer_job');
    }

    public function locations(): BelongsToMany
    {
        return $this->belongsToMany(Location::class, 'job_location');
    }

    public function project(): BelongsTo
    {
        return $this->belongsTo(TaskProject::class);
    }
}
