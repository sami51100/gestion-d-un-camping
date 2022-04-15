<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGuidersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('guiders', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Reservation');
            $table->unsignedBigInteger('Id_Placeur');
            $table->foreign('Id_Placeur')->references('Id_Placeur')->on('placeurs');
            $table->foreign('Id_Reservation')->references('Id_Reservation')->on('reservations');
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
        Schema::dropIfExists('guiders');
    }
}
