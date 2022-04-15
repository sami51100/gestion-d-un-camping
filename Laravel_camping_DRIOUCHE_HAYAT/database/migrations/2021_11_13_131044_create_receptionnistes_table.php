<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReceptionnistesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('receptionnistes', function (Blueprint $table) {
            $table->id('Id_Recep');
            $table->string('Nom_Recep',25);
            $table->string('Prenom_Recep',25);
            $table->string('Adresse_Recep',250);
            $table->date('Date_Naissance_Recep');
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
        Schema::dropIfExists('receptionnistes');
    }
}
