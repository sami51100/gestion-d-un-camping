<?php

namespace Database\Factories;

use App\Models\animateur;
use Illuminate\Database\Eloquent\Factories\Factory;

class animateurFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = animateur::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Nom_Animateur'=> $this->faker->lastName(),
            'Prenom_Animateur'=> $this->faker->firstName(),
            'Date_Naissance_Animateur'=> $this->faker->unique()->dateTimeBetween('-80 years','-16 years ')->format('Y-m-d'),
            'Adresse_Animateur' => $this->faker->address(),
            'Numero_Tel_Animateur' => $this->faker->unique()->serviceNumber()
        ];
    }
}
