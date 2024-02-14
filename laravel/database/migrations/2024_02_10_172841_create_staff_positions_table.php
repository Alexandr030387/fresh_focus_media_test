<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStaffPositionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staff_positions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('staff_id')
                ->nullable()
                ->constrained('staffs')
                ->onUpdate('SET NULL')
                ->onDelete('CASCADE');
            $table->foreignId('position_id')
                ->nullable()
                ->constrained('positions')
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
        Schema::dropIfExists('staff_positions');
    }
}
