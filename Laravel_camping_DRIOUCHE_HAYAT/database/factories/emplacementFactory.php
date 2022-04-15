<?php

namespace Database\Factories;

use App\Models\emplacement;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class emplacementFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = emplacement::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Caution = DB::table('cautions')->pluck('Id_Caution');
        $Id_Periode = DB::table('periodes')->pluck('Id_Periode');
        return [
            'Id_Caution'=> $this->faker->randomElement($Id_Caution),
            'Id_Periode'=> $this->faker->randomElement($Id_Periode),
            'Surface_Emplacement'=> '140',
            'Numero_Emplacement'=> '004',
            'Type_Emplacement'=> $this->faker->randomElement(['chalet','mobil home', 'tente' ,'pavillions','caravane','camping-cars']),
            'Prix_Emplacement'=> '20',
        ];
    }
}
