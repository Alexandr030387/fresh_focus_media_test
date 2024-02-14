<?php

namespace app\Models\Task;

use Database\Factories\Task\TaskFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

/**
 * App\Models\Task\Task
 *
 * @property int $id
 * @property string $description
 * @property-read TaskProject $project
 * @property-read Collection<int, TaskLabour> $labours
 * @property-read Collection<int, TaskTruck> $trucks
 * @property-read Collection<int, TaskMiscellaneous> $miscellaneous
 *
 * @method static TaskFactory factory(...$parameters)
 * @method static Builder|Task newModelQuery()
 * @method static Builder|Task newQuery()
 * @method static Builder|Task query()
 */
class Task extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<string>
     */
    protected $fillable = [
        'description',
    ];

    public $timestamps = false;

    protected $table = 'tasks';

    public function project(): HasOne
    {
        return $this->hasOne(TaskProject::class);
    }

    public function labours(): HasMany
    {
        return $this->hasMany(TaskLabour::class);
    }

    public function trucks(): HasMany
    {
        return $this->hasMany(TaskTruck::class);
    }

    public function miscellaneous(): HasMany
    {
        return $this->hasMany(TaskMiscellaneous::class);
    }
}
