<?php

namespace Database\Factories;

use App\Models\equiper;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class equiperFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = equiper::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Emplacement = DB::table('emplacements')->pluck('Id_Emplacement');
        $Id_Equipement = DB::table('equipements')->pluck('Id_Equipement');
        return [
            'Prix'=>$this->faker->numberBetween($min = 0, $max = 4),
            'Id_Emplacement'=> $this->faker->randomElement($Id_Emplacement),
            'Id_Equipement'=> $this->faker->randomElement($Id_Equipement),
        ];
    }
}
