<?php

namespace Database\Factories;

use App\Models\inscrire_activite;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Factories\Factory;

class inscrire_activiteFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = inscrire_activite::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Client = DB::table('clients')->pluck('Id_Client');
        $Id_Seance = DB::table('seances')->pluck('Id_Seance');
        $Id_Acc = DB::table('accompagnants')->pluck('Id_Acc');
        return [
            'Prix_Activite'=>4,
            'Id_Client'=> $this->faker->randomElement($Id_Client),
            'Id_Seance'=> $this->faker->randomElement($Id_Seance),
            'Id_Acc'=> $this->faker->randomElement($Id_Acc),
        ];
    }
}
