<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEquipersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('equipers', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Emplacement');
            $table->unsignedBigInteger('Id_Equipement');
            $table->foreign('Id_Emplacement')->references('Id_Emplacement')->on('emplacements');
            $table->foreign('Id_Equipement')->references('Id_Equipement')->on('equipements');
            $table->decimal('Prix',15,2);
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
        Schema::dropIfExists('equipers');
    }
}
