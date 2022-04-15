<?php

namespace Database\Factories;

use App\Models\placeur;
use Illuminate\Database\Eloquent\Factories\Factory;

class placeurFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = placeur::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Nom_Placeur'=> $this->faker->lastName(),
            'Prenom_Placeur'=> $this->faker->firstName(),
            'Date_Naissance_Placeur'=> $this->faker->unique()->dateTimeBetween('-80 years','-16 years ')->format('Y-m-d'),
            'Adresse_Placeur' => $this->faker->address(),
        ];
    }
}
