<?php

namespace Database\Factories;

use App\Models\caution;
use Illuminate\Database\Eloquent\Factories\Factory;

class cautionFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = caution::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Pourcent_Caution'=> '20' ,
            'Etat_Emplacement'=>$this->faker->randomElement(['propre','degrade','neuf']),
        ];
    }
}
