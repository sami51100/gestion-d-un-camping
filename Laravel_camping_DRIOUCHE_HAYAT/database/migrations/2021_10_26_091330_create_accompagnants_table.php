<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAccompagnantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('accompagnants', function (Blueprint $table) {

            $table->id('Id_Acc');
            $table->string('Nom_Acc', 25);
            $table->string('Prenom_Acc', 25);
            $table->date('Date_Naissance_Acc');
            $table->string('Type_Tarif_Acc', 25);
            $table->unsignedBigInteger('Id_Client');
            $table->foreign('Id_Client')->references('Id_Client')->on('clients');
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
        Schema::dropIfExists('accompagnants');
    }
}

// Id_Acc int
// Nom_Acc varchar 25
// Prenom_Acc varchar 25
// Date_Naissance_Acc date
// Type_Tarif_Acc varchar 25
// Id_Client foreignkey
