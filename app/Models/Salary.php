<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Salary extends Model
{
    use HasFactory;

    protected $fillable = [
        'job_id',
        'employment_type_id',
        'job_title',
        'monthly_salary',
        'employment_commitment',
        'years_of_experience',
        'education_institution',
        'education',
        'postal_code',
        'gender',
        'permission',
    ];

    public function employment_type(): BelongsTo
    {
        return $this->belongsTo(EmploymentType::class);
    }

    public function job(): BelongsTo
    {
        return $this->belongsTo(Job::class);
    }

    public function employment_commitment(): BelongsTo
    {
        return $this->belongsTo(EmploymentCommitment::class);
    }

    public function getPermissionForHumansAttribute()
    {
        return $this->permission ? 'Yes' : 'No';
    }

    public function getCreatedAtForHumansAttribute()
    {
        return date("M, d Y", strtotime($this->created_at));
    }
}
