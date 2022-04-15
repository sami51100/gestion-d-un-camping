<?php

namespace Database\Factories;

use App\Models\pratiquer;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class pratiquerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = pratiquer::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Activite = DB::table('activites')->pluck('Id_Activite');
        $Id_Seance = DB::table('seances')->pluck('Id_Seance');
        return [
            'Id_Activite'=> $this->faker->randomElement($Id_Activite),
            'Id_Seance'=> $this->faker->randomElement($Id_Seance),
        ];
    }
}
