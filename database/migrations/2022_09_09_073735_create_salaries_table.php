<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salaries', function (Blueprint $table) {
            $table->id();
            $table->foreignId('job_id');
            $table->foreignId('employment_type_id');
            $table->foreignId('employment_commitment_id');
            $table->string('job_title')->nullable();
            $table->integer('monthly_salary')->nullable();
            $table->integer('years_of_experience');
            $table->string('education_institution');
            $table->string('education');
            $table->string('postal_code');
            $table->string('gender');
            $table->boolean('permission');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('salaries');
    }
};
