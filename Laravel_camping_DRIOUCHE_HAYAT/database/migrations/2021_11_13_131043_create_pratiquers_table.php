<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePratiquersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pratiquers', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Activite');
            $table->unsignedBigInteger('Id_Seance');
            $table->foreign('Id_Activite')->references('Id_Activite')->on('activites');
            $table->foreign('Id_Seance')->references('Id_Seance')->on('seances');
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
        Schema::dropIfExists('pratiquers');
    }
}
