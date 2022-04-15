<?php

namespace Database\Factories;

use App\Models\agent_entretien;
use Illuminate\Database\Eloquent\Factories\Factory;

class agent_entretienFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = agent_entretien::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Nom_Agent' => $this->faker->lastName(),
            'Prenom_Agent' => $this->faker->firstName(),
            'Date_Naissance_Agent' => $this->faker->unique()->dateTimeBetween('-80 years','-16 years')->format('Y-m-d'),
            'Adresse_Agent' => $this->faker->address(),

        ];
    }
}
