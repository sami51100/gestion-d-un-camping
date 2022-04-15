<?php

namespace Database\Factories;

use App\Models\Accompagnant;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class AccompagnantFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Accompagnant::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Client = DB::table('clients')->pluck('Id_Client');
        return [
            'Nom_Acc' => $this->faker->lastName(),
            'Prenom_Acc' => $this->faker->firstName(),
            'Date_Naissance_Acc' => $this->faker->unique()->dateTimeBetween('-80 years','-16 years')->format('Y-m-d'),
            'Type_Tarif_Acc' => $this->faker->randomElement(['enfant','adulte']),
            'Id_Client'=> $this->faker->randomElement($Id_Client),
        ];
    }
}
// $this->faker->unique()->randomFloat($nbMaxDecimals = 2, $min = 9, $max = 44),

// Id_Acc int
// Nom_Acc varchar 25
// Prenom_Acc varchar 25
// Date_Naissance_Acc date
// Type_Tarif_Acc varchar 25
// Id_Client foreignkey

