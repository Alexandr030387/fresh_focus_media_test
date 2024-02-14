<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTaskMiscellaneousTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('task_miscellaneous', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('task_id');
            $table->text('description');
            $table->float('cost');
            $table->float('price');
            $table->bigInteger('quantity');
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
        Schema::dropIfExists('task_miscellaneous');
    }
}
