<?php

namespace Database\Factories;

use App\Models\posseder;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class possederFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = posseder::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Animateur = DB::table('animateurs')->pluck('Id_Animateur');
        $Id_Placeur = DB::table('placeurs')->pluck('Id_Placeur');
        $Id_Diplome = DB::table('diplomes')->pluck('Id_Diplome');
        return [
            'Date_Obtention'=>$this->faker->unique()->dateTimeBetween('-80 years','-16 years')->format('Y-m-d'),
            'Id_Animateur'=> $this->faker->randomElement($Id_Animateur),
            'Id_Placeur'=> $this->faker->randomElement($Id_Placeur),
            'Id_Diplome'=> $this->faker->randomElement($Id_Diplome),
        ];
    }
}
