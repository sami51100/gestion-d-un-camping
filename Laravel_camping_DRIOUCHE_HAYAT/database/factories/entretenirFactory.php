<?php

namespace Database\Factories;

use App\Models\entretenir;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class entretenirFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = entretenir::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Agent = DB::table('agent_entretiens')->pluck('Id_Agent');
        $Id_Emplacement = DB::table('emplacements')->pluck('Id_Emplacement');
        return [
            'Id_Agent'=> $this->faker->randomElement($Id_Agent),
            'Id_Emplacement'=> $this->faker->randomElement($Id_Emplacement),
        ];
    }
}
