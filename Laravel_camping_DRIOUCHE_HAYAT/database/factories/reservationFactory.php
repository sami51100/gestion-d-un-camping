<?php

namespace Database\Factories;

use App\Models\reservation;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class reservationFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = reservation::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Recep = DB::table('receptionnistes')->pluck('Id_Recep');
        $Id_Emplacement = DB::table('emplacements')->pluck('Id_Emplacement');
        return [
            'Id_Recep'=> $this->faker->randomElement($Id_Recep),
            'Id_Emplacement'=> $this->faker->randomElement($Id_Emplacement),
            'Date_Arrivee'=>$this->faker->unique()->dateTimeInInterval($startDate = 'now')->format('Y-m-d'),
            'Date_Depart'=>$this->faker->unique()->dateTimeInInterval($startDate = 'now')->format('Y-m-d'),
            'Nombre_Adulte'=>$this->faker->numberBetween($min = 0, $max = 4),
            'Nombre_Enfant'=>$this->faker->numberBetween($min = 0, $max = 4),
        ];
    }
}
