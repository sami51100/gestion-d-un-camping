<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;
use App\Models\detenir;


class detenirFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = detenir::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Specialite = DB::table('specialites')->pluck('Id_Specialite');
        $Id_Animateur = DB::table('animateurs')->pluck('Id_Animateur');
        return [
            'Id_Specialite'=> $this->faker->randomElement($Id_Specialite),
            'Id_Animateur'=> $this->faker->randomElement($Id_Animateur),
        ];
    }
}
