<?php

namespace Database\Factories;

use App\Models\periode;
use Illuminate\Database\Eloquent\Factories\Factory;

class periodeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = periode::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Type_Saison'=>$this->faker->randomElement(['basse saison ','moyenne saison','haute saison']),
            'Pourcent_Saison'=>0,
          ];
    }
}
