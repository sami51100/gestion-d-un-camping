<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOccupersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('occupers', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Vehicule');
            $table->unsignedBigInteger('Id_Emplacement');
            $table->foreign('Id_Vehicule')->references('Id_Vehicule')->on('vehicules');
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
        Schema::dropIfExists('occupers');
    }
}
