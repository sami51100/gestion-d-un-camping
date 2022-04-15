<?php

namespace Database\Factories;

use App\Models\guider;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class guiderFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = guider::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {$Id_Reservation = DB::table('reservations')->pluck('Id_Reservation');
        $Id_Placeur = DB::table('placeurs')->pluck('Id_Placeur');
        return [
            'Id_Reservation'=> $this->faker->randomElement($Id_Reservation),
            'Id_Placeur'=> $this->faker->randomElement($Id_Placeur),
        ];
    }
}
