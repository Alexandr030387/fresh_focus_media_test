<?php

namespace App\Models;

use Database\Factories\StaffFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

/**
 * App\Models\Staff
 *
 * @property int $id
 * @property string $name
 * @property-read Collection<int, Position> $positions
 *
 * @method static StaffFactory factory(...$parameters)
 * @method static Builder|Staff newModelQuery()
 * @method static Builder|Staff newQuery()
 * @method static Builder|Staff query()
 */
class Staff extends Model
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

    protected $table = 'staffs';

    public function positions(): BelongsToMany
    {
        return $this->belongsToMany(Position::class, 'staff_positions');
    }
}
