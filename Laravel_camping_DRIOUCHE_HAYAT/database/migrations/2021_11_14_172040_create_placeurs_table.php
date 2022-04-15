<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePlaceursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('placeurs', function (Blueprint $table) {
            $table->id('Id_Placeur');
            $table->string('Nom_Placeur', 25);
            $table->string('Prenom_Placeur',25);
            $table->date('Date_Naissance_Placeur');
            $table->string('Adresse_Placeur',250);
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
        Schema::dropIfExists('placeurs');
    }
}
