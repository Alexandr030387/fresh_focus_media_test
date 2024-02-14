<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTaskLaboursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('task_labours', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('task_id');
            $table->bigInteger('staff_id');
            $table->bigInteger('position_id');
            $table->bigInteger('position_rate_id');
            $table->string('uom_type');
            $table->float('regular_rate');
            $table->float('overtime_rate');
            $table->float('regular_hours');
            $table->float('overtime_hours');
            $table->float('line_total');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('task_labours');
    }
}
