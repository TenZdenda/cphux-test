<div class="mx-auto max-w-8xl px-10">
    <div class="flex items-baseline justify-between border-b border-gray-200 pt-24 pb-6">
        <h1 class="text-4xl font-bold tracking-tight text-gray-900">{{ $title }}</h1>
    </div>

    <section aria-labelledby="products-heading" class="pt-6 pb-24">
        <div class="grid grid-cols-1 gap-x-8 gap-y-10 lg:grid-cols-4">
            <form class="hidden lg:block">
                <x-filter-section name="Years">
                    <x-slot name="content">
                        <select wire:model="filterYear" name="" id="" class="w-full bg-stone-200 px-4 py-3 rounded">
                            <option value="">All</option>
                            @foreach($years as $year)
                                <option value="{{ $year->years_of_experience + 1 }}">{{ $year->years_of_experience }} year</option>
                            @endforeach
                        </select>
                    </x-slot>
                </x-filter-section>
                <x-filter-section name="Job categories">
                    <x-slot name="content">
                        @foreach($jobs as $job)
                            <div class="flex items-center">
                                <input id="filter-job-category-{{ $job->id }}" wire:model="filterJobs" name="filter-job-{{$job->id}}" value="{{ $job->id }}" type="checkbox" class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500">
                                <label for="filter-job-category-{{ $job->id }}" class="ml-3 min-w-0 flex-1 text-gray-500">{{ $job->name }}</label>
                            </div>
                        @endforeach
                    </x-slot>
                </x-filter-section>
            </form>

            <div class="lg:col-span-3">
                <x-table>
                    <x-slot name="head">
                        <x-table.heading>Job Title</x-table.heading>
                        <x-table.heading>Monthly salary</x-table.heading>
                        <x-table.heading>Job category</x-table.heading>
                        <x-table.heading>Employment Type</x-table.heading>
                        <x-table.heading>Employment Commitment</x-table.heading>
                        <x-table.heading>Years of experience</x-table.heading>
                        <x-table.heading>Education Institution</x-table.heading>
                        <x-table.heading>Education</x-table.heading>
                        <x-table.heading>Postal Code</x-table.heading>
                        <x-table.heading>Gender</x-table.heading>
                        <x-table.heading>Permission</x-table.heading>
                        <x-table.heading>Created at</x-table.heading>
                    </x-slot>
                    <x-slot name="body">
                        @foreach($salaries as $salary)
                            <x-table.row>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->job_title }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->monthly_salary }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->job->name }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->employment_type->name }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->employment_commitment->name }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->years_of_experience }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->education_institution }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->education }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->postal_code }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->gender }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->permission_for_humans }} </span>
                                </x-table.cell>
                                <x-table.cell>
                                    <span class="text-cool-gray-900 font-medium">{{ $salary->created_at_for_humans }} </span>
                                </x-table.cell>
                            </x-table.row>
                        @endforeach
                    </x-slot>
                </x-table>
            </div>
        </div>
    </section>
</div>
