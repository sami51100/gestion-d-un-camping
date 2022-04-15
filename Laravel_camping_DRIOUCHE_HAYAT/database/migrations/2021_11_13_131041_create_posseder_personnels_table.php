<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePossederPersonnelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posseder_personnels', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Agent');
            $table->unsignedBigInteger('Id_Recep');
            $table->unsignedBigInteger('Id_Diplome');
            $table->foreign('Id_Agent')->references('Id_Agent')->on('agent_entretiens');
            $table->foreign('Id_Recep')->references('Id_Recep')->on('receptionnistes');
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
        Schema::dropIfExists('posseder_personnels');
    }
}
