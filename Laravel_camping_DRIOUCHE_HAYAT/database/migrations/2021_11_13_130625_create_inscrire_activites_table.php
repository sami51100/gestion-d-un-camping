<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInscrireActivitesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inscrire_activites', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Acc');
            $table->unsignedBigInteger('Id_Client');
            $table->unsignedBigInteger('Id_Seance');
            $table->foreign('Id_Acc')->references('Id_Acc')->on('accompagnants');
            $table->foreign('Id_Seance')->references('Id_Seance')->on('seances');
            $table->foreign('Id_Client')->references('Id_Client')->on('clients');
            $table->decimal('Prix_Activite', 15,2);
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
        Schema::dropIfExists('inscrire_activites');
    }
}
