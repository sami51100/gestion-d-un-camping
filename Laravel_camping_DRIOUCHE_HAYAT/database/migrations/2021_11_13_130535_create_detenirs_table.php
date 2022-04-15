<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetenirsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detenirs', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Animateur');
            $table->unsignedBigInteger('Id_Specialite');
            $table->foreign('Id_Animateur')->references('Id_Animateur')->on('animateurs');
            $table->foreign('Id_Specialite')->references('Id_Specialite')->on('specialites');

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
        Schema::dropIfExists('detenirs');
    }
}
