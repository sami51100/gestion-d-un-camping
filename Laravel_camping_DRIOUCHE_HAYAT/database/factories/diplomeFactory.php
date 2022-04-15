<?php

namespace Database\Factories;

use App\Models\diplome;
use Illuminate\Database\Eloquent\Factories\Factory;

class diplomeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = diplome::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Nom_Diplome'=>'BAFA',

        ];
    }
}
