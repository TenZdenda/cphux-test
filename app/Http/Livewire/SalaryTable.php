<?php

namespace App\Http\Livewire;

use App\Models\Job;
use App\Models\Salary;
use Livewire\Component;

class SalaryTable extends Component
{
    public string $title = '';
    public string $filterYear = '';
    public array $filterJobs = [];

    public function mount($title)
    {
        $this->title = $title;
    }

    public function render()
    {
        $salaries = Salary::where(function ($q) {
            if ($this->filterYear) {
                $q->where('years_of_experience', $this->filterYear - 1);
            }

            if ($this->filterJobs) {
                $q->whereIn('job_id', $this->filterJobs);
            }
        })->get();

        return view('livewire.salary-table', [
            'salaries' => $salaries,
            'years' => Salary::select('years_of_experience')->orderBy('years_of_experience')->groupBy('years_of_experience')->get(),
            'jobs' => Job::all()
        ]);
    }
}
