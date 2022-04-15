<?php

namespace Database\Factories;

use App\Models\seance;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class seanceFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = seance::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Animateur = DB::table('animateurs')->pluck('Id_Animateur');
        return [
           'Nom_Seance'=>$this->faker->randomElement(['Yoga','Paintball','Ping-pong','Velo','Randonnee','Feu de camp','Course orientation']),
           'Date_Debut'=>$this->faker->unique()->dateTimeInInterval($startDate = 'now')->format('Y-m-d'),
           'Date_Fin'=>$this->faker->unique()->dateTimeInInterval($startDate = 'now')->format('Y-m-d'),
           'Id_Animateur'=> $this->faker->randomElement($Id_Animateur),
        ];
    }
}
