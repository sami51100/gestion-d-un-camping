<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateActivitesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activites', function (Blueprint $table) {

            $table->id('Id_Activite');
            $table->string('Nom_Activite', 25);
            $table->string('Lieu_Activite', 250);
            $table->string('Type_Activite', 25);
            $table->string('Prerequis_Activite', 250);
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
        Schema::dropIfExists('activites');
    }
}
