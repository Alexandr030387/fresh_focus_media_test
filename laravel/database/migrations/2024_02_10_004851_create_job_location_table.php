<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobLocationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_location', function (Blueprint $table) {
            $table->id();
            $table->foreignId('job_id')
                ->nullable()
                ->constrained('jobs')
                ->onUpdate('SET NULL')
                ->onDelete('CASCADE');
            $table->foreignId('location_id')
                ->nullable()
                ->constrained('locations')
                ->onUpdate('SET NULL')
                ->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_location');
    }
}
