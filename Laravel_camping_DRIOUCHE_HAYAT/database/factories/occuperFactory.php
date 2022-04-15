<?php

namespace Database\Factories;

use App\Models\occuper;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;


class occuperFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = occuper::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {$Id_Vehicule = DB::table('vehicules')->pluck('Id_Vehicule');
        $Id_Emplacement = DB::table('emplacements')->pluck('Id_Emplacement');
        return [
            'Id_Vehicule'=> $this->faker->randomElement($Id_Vehicule),
            'Id_Emplacement'=> $this->faker->randomElement($Id_Emplacement),
        ];
    }
}
