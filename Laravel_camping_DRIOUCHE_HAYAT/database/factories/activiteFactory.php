<?php

namespace Database\Factories;

use App\Models\activite;
use Illuminate\Database\Eloquent\Factories\Factory;

class activiteFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = activite::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Nom_Activite'=> $this->faker->randomElement(['Yoga','Paintball','Ping-pong','Velo','Randonnee','Feu de camp','Course orientation']),
            'Lieu_Activite'=> $this->faker->randomElement(['Forêt', 'Camping']),
            'Type_Activite'=> $this->faker->randomElement(['detente','sport','loisir']),
            'Prerequis_Activite'=> 'tenue de sport' ,
        ];
    }
}
