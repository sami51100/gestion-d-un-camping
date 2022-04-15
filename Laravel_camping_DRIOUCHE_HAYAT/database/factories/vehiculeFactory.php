<?php

namespace Database\Factories;

use App\Models\vehicule;
use Illuminate\Database\Eloquent\Factories\Factory;

class vehiculeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = vehicule::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'Nom_Vehicule'=>$this->faker->randomElement(['HYMER Classe-B MasterLine T','Benimar ','Campervans Mont-Blanc','Frankia','Knaus']),
            'Plaque_Vehicule'=>$this->plaque(),
        ];
    }


    public  function plaque(){
       return  $this->chaineAleatoire(2).'-'.$this->nombreAleatoire(3).'-'.$this->chaineAleatoire(2);
    }

    public function chaineAleatoire($longueur = 2)
    {
        $caracteres = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $longueurMax = strlen($caracteres);
        $chaineAleatoire = '';
        for ($i = 0; $i < $longueur; $i++){
            $chaineAleatoire .= $caracteres[rand(0, $longueurMax - 1)];
        }
        return $chaineAleatoire;
    }

    public function nombreAleatoire($longueur = 3)
    {
        $caracteres = '0123456789';
        $longueurMax = strlen($caracteres);
        $chaineAleatoire = '';
        for ($i = 0; $i < $longueur; $i++) {
            $chaineAleatoire .= $caracteres[rand(0, $longueurMax - 1)];
        }
        return $chaineAleatoire;
    }
}
