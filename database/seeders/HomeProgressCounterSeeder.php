<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HomeProgressCounterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('configurations')->updateOrInsert([
            'id' => 63
        ], [
            'name' => 'Home.progressContent',
            'value' => $this->defaultProgressData(),
            'title' => 'Home Progress Section',
            'description' => 'Home Progress Section Counts',
            'input_type' => 'textarea',
            'editable' => 1,
            'weight' => NULL,
            'params' => '',
            'order' => 0,
        ]);
    }

    function defaultProgressData()
    {

        $countersData = [
            [
                'count' => 220,
                'label' => 'TOTAL JOURNALIST',
            ],
            [
                'count' => 35,
                'label' => 'EVENT SPEAKERS',
            ],
            [
                'count' => 42,
                'label' => 'EVENT SESSIONS',
            ],
            [
                'count' => 35,
                'label' => 'SPONSORS & PARTNERS',
            ],
        ];

        $serializedData = serialize($countersData);
        return $serializedData;

    }

}
