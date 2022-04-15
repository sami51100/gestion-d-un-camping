<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSeancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('seances', function (Blueprint $table) {
            $table->id('Id_Seance');
            $table->string('Nom_Seance',25);
            $table->datetime('Date_Debut');
            $table->datetime('Date_Fin');
            $table->unsignedBigInteger('Id_Animateur');
            $table->foreign('Id_Animateur')->references('Id_Animateur')->on('animateurs');
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
        Schema::dropIfExists('seances');
    }
}
