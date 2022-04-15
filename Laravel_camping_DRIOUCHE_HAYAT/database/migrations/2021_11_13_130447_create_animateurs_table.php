<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnimateursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('animateurs', function (Blueprint $table) {

            $table->id('Id_Animateur');
            $table->string('Nom_Animateur', 25);
            $table->string('Prenom_Animateur', 25);
            $table->date('Date_Naissance_Animateur');
            $table->string('Adresse_Animateur',250);
            $table->string('Numero_Tel_Animateur', 25);
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
        Schema::dropIfExists('animateurs');
    }
}
