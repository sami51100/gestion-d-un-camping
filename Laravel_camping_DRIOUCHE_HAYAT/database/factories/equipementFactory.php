<?php

namespace Database\Factories;

use App\Models\equipement;
use Illuminate\Database\Eloquent\Factories\Factory;

class equipementFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = equipement::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Pourcent_Electricite'=>'2' ,
            'Pourcent_Wifi'=>'3' ,
            'Pourcent_Eau'=>'3' ,
        ];
    }
}
