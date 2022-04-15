<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDisposersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('disposers', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Reservation');
            $table->unsignedBigInteger('Id_Emplacement');
            $table->foreign('Id_Reservation')->references('Id_Reservation')->on('reservations');
            $table->foreign('Id_Emplacement')->references('Id_Emplacement')->on('emplacements');
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
        Schema::dropIfExists('disposers');
    }
}
