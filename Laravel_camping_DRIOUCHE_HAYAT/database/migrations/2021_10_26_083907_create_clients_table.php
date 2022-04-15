<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clients', function (Blueprint $table) {
            $table->id('Id_Client');
            $table->string('Nom_Client', 25);
            $table->string('Prenom_Client', 25);
            $table->date('Date_Naissance_Client');
            $table->string('Numero_Tel_Client', 25);
            $table->string('Adresse_Client', 250);
            $table->unsignedBigInteger('Id_Reservation');
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
        Schema::dropIfExists('clients');
    }
}

// client

// Id_Client int
// Nom_Client varchar 25
// Prenom_Client varchar 25
// Date_Naissance_Client date
// Adresse_Client varchar 250
// Numero_Tel_Client varchar 25
