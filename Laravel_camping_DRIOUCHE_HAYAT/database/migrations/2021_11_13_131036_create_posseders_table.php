<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePossedersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posseders', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Animateur');
            $table->unsignedBigInteger('Id_Placeur');
            $table->unsignedBigInteger('Id_Diplome');
            $table->foreign('Id_Animateur')->references('Id_Animateur')->on('animateurs');
            $table->foreign('Id_Placeur')->references('Id_Placeur')->on('placeurs');
            $table->foreign('Id_Diplome')->references('Id_Diplome')->on('diplomes');
            $table->date('Date_Obtention');
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
        Schema::dropIfExists('posseders');
    }
}
