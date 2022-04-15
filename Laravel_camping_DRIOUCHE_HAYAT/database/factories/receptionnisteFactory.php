<?php

namespace Database\Factories;

use App\Models\receptionniste;
use Illuminate\Database\Eloquent\Factories\Factory;

class receptionnisteFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = receptionniste::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Nom_Recep'=> $this->faker->lastName(),
            'Prenom_Recep'=> $this->faker->firstName(),
            'Date_Naissance_Recep'=> $this->faker->unique()->dateTimeBetween('-80 years','-16 years ')->format('Y-m-d'),
            'Adresse_Recep' => $this->faker->address(),
        ];
    }
}
