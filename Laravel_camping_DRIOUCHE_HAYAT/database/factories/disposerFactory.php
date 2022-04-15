<?php

namespace Database\Factories;

use App\Models\disposer;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class disposerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = disposer::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Reservation = DB::table('reservations')->pluck('Id_Reservation');
        $Id_Emplacement = DB::table('emplacements')->pluck('Id_Emplacement');
        return [
            'Id_Reservation'=> $this->faker->randomElement($Id_Reservation),
            'Id_Emplacement'=> $this->faker->randomElement($Id_Emplacement),
        ];
    }
}
