<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEntretenirsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('entretenirs', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Emplacement');
            $table->unsignedBigInteger('Id_Agent');
            $table->foreign('Id_Emplacement')->references('Id_Emplacement')->on('emplacements');
            $table->foreign('Id_Agent')->references('Id_Agent')->on('agent_entretiens');
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
        Schema::dropIfExists('entretenirs');
    }
}
