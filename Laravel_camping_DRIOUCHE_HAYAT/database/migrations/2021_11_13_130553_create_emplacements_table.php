<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmplacementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('emplacements', function (Blueprint $table) {
            $table->id('Id_Emplacement');
            $table->integer('Surface_Emplacement');
            $table->integer('Numero_Emplacement');
            $table->string('Type_Emplacement', 25);
            $table->decimal('Prix_Emplacement',15,2);
            $table->unsignedBigInteger('Id_Caution');
            $table->unsignedBigInteger('Id_Periode');
            $table->foreign('Id_Caution')->references('Id_Caution')->on('cautions');
            $table->foreign('Id_Periode')->references('Id_Periode')->on('periodes');
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
        Schema::dropIfExists('emplacements');
    }
}
