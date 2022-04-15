<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservations', function (Blueprint $table) {
            $table->id('Id_Reservation');
            $table->integer('Nombre_Adulte');
            $table->integer('Nombre_Enfant');
            $table->date('Date_Arrivee');
            $table->date('Date_Depart');
            $table->unsignedBigInteger('Id_Recep');
            $table->unsignedBigInteger('Id_Emplacement');
            $table->foreign('Id_Recep')->references('Id_Recep')->on('receptionnistes');
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
        Schema::dropIfExists('reservations');
    }
}
