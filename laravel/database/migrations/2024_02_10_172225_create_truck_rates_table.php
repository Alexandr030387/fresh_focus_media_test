<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTruckRatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('truck_rates', function (Blueprint $table) {
            $table->id();
            $table->foreignId('truck_id')
                ->nullable()
                ->constrained('trucks')
                ->onUpdate('SET NULL')
                ->onDelete('CASCADE');
            $table->float('hourly');
            $table->float('fixed');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('truck_rates');
    }
}
