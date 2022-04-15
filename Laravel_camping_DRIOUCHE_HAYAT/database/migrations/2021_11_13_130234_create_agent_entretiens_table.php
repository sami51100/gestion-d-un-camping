<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAgentEntretiensTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('agent_entretiens', function (Blueprint $table) {

            $table->id('Id_Agent');
            $table->string('Nom_Agent', 25);
            $table->string('Prenom_Agent', 25);
            $table->date('Date_Naissance_Agent');
            $table->string('Adresse_Agent', 250);
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
        Schema::dropIfExists('agent_entretiens');
    }
}
