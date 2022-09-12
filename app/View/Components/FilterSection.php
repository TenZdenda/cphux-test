<?php

namespace App\View\Components;

use Illuminate\View\Component;

class FilterSection extends Component
{
    public $name;

    public $filterData = [];

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($name, $filterData = [])
    {
        $this->name = $name;
        $this->filterData = $filterData;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.filter-section', [
            'name' => $this->name,
            'filterData' => $this->filterData
        ]);
    }
}
