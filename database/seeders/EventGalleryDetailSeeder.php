<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class EventGalleryDetailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = 
             [
                'id' => 69,
                'name' => 'Home.eventGallery',
                'value' => 'EVENT GALLERY',
                'title' => 'Home Event Gallery Detail',
                'description' => 'Home Event Gallery Detail With Count and other data',
                'input_type' => 'text',
                'editable' => 1,
                'weight' => null,
                'params' => $this->getEventGalleryHTML("A GLIMPSE OF OUR PAST YEAR'S MEMORABLE MOMENTS!",'Explore the captivating visuals that encapsulate the essence of our previous events. Immerse yourself in the vibrant images showcasing the excitement, innovation, and unforgettable experiences from our past gatherings.','8'),
                'order' => 0,
            ];
        
        DB::table('configurations')->updateOrInsert(
            ['id' => $data['id']],
            $data
        );
    }

    private function getEventGalleryHTML($sectiontitle, $sectionParagraph, $galleryCount)
    {
        $paramsArray = [
            'sectionTitle' => $sectiontitle,
            'sectionParagraph' => $sectionParagraph,
            'galleryCount' => $galleryCount,
        ];

        return serialize($paramsArray);
    }
}
