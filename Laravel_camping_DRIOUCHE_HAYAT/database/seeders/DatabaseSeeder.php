<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();


        $this->call(agent_entretienSeeder::class);
        $this->call(animateurSeeder::class);
        $this->call(placeurSeeder::class);
        $this->call(receptionnisteSeeder::class);
        $this->call(activiteSeeder::class);
        $this->call(cautionSeeder::class);
        $this->call(diplomeSeeder::class);
        $this->call(periodeSeeder::class);
        $this->call(emplacementSeeder::class);
        $this->call(equipementSeeder::class);
        $this->call(seanceSeeder::class);


        $this->call(specialiteSeeder::class);
        $this->call(tarifSeeder::class);
        $this->call(vehiculeSeeder::class);
        $this->call(reservationSeeder::class);
        $this->call(ClientSeeder::class);

        $this->call(AccompagnantSeeder::class);
        $this->call(inscrire_activiteSeeder::class);
        $this->call(equiperSeeder::class);
        $this->call(possederSeeder::class);
        $this->call(posseder_personnelSeeder::class);
        $this->call(occuperSeeder::class);
        $this->call(disposerSeeder::class);
        $this->call(entretenirSeeder::class);
        $this->call(pratiquerSeeder::class);
        $this->call(guiderSeeder::class);
        $this->call(detenirSeeder::class);
    }
}
