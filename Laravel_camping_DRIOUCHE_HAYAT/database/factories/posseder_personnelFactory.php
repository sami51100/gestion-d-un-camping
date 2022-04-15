<?php

namespace Database\Factories;

use App\Models\posseder_personnel;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class posseder_personnelFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = posseder_personnel::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $Id_Agent = DB::table('agent_entretiens')->pluck('Id_Agent');
        $Id_Recep = DB::table('receptionnistes')->pluck('Id_Recep');
        $Id_Diplome = DB::table('diplomes')->pluck('Id_Diplome');
        return [
            'Date_Obtention'=>$this->faker->unique()->dateTimeBetween('-80 years','-16 years')->format('Y-m-d'),
            'Id_Agent'=> $this->faker->randomElement($Id_Agent),
            'Id_Recep'=> $this->faker->randomElement($Id_Recep),
            'Id_Diplome'=> $this->faker->randomElement($Id_Diplome),
        ];
    }
}
