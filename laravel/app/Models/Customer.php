<?php

namespace App\Models;

use app\Models\Task\TaskProject;
use Database\Factories\CustomerFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

/**
 * App\Models\Customer
 *
 * @property int $id
 * @property string $name
 * @property-read Collection<int, Job> $jobs
 * @property-read TaskProject $project
 *
 * @method static CustomerFactory factory(...$parameters)
 * @method static Builder|Customer newModelQuery()
 * @method static Builder|Customer newQuery()
 * @method static Builder|Customer query()
 */
class Customer extends Model
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

    protected $table = 'customers';

    public function jobs(): BelongsToMany
    {
        return $this->belongsToMany(Job::class, 'customer_job');
    }

    public function project(): BelongsTo
    {
        return $this->belongsTo(TaskProject::class);
    }
}
