<?php

namespace Database\Factories;

use App\Models\specialite;
use Illuminate\Database\Eloquent\Factories\Factory;

class specialiteFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = specialite::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Nom_Specialite'=>$this->faker->randomElement(['sport ','detente','loisir']),
        ];
    }
}
