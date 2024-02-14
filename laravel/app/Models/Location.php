<?php

namespace App\Models;

use app\Models\Task\TaskProject;
use Database\Factories\LocationFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

/**
 * App\Models\Location
 *
 * @property int $id
 * @property string $name
 * @property-read Collection<int, Job> $jobs
 * @property-read TaskProject $project
 *
 * @method static LocationFactory factory(...$parameters)
 * @method static Builder|Location newModelQuery()
 * @method static Builder|Location newQuery()
 * @method static Builder|Location query()
 */
class Location extends Model
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

    protected $table = 'locations';

    public function jobs(): BelongsToMany
    {
        return $this->belongsToMany(Job::class, 'job_location');
    }

    public function project(): BelongsTo
    {
        return $this->belongsTo(TaskProject::class);
    }
}
