<?php

namespace Database\Factories;

use App\Models\Client;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class ClientFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Client::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    { $Id_Reservation = DB::table('reservations')->pluck('Id_Reservation');
        return [
            'Id_Reservation'=> $this->faker->randomElement($Id_Reservation),
            'Nom_Client' => $this->faker->lastName(),
            'Prenom_Client' => $this->faker->firstName(),
            'Date_Naissance_Client' => $this->faker->unique()->dateTimeBetween('-80 years','-16 years')->format('Y-m-d'),
            'Adresse_Client' => $this->faker->address(),
            'Numero_Tel_Client' => $this->faker->unique()->serviceNumber()
        ];
    }
}

// client

// Id_Client int
// Nom_Client varchar 25
// Prenom_Client varchar 25
// Date_Naissance_Client date
// Adresse_Client varchar 250
// Numero_Tel_Client varchar 25
