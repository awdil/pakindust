<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class RoutineDetailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'id' => 65,
                'name' => 'Home.firstroutineDetail',
                'value' => null,
                'title' => 'Home first routine Detail',
                'description' => 'Home first routine Detail in the param we will manage the other content',
                'input_type' => 'file',
                'editable' => 1,
                'weight' => null,
                'params' => $this->getRoutineParamsHTML('10:00 AM to 11:30 AM','Exhibition Inauguration','Grand Opening Ceremony','Join us for the grand inauguration of Pakindustrial Expo. Explore a diverse range of industrial products and services showcased by leading companies. This ceremony marks the beginning of an exciting exhibition experience.'),
                'order' => 0,
            ],
            [
                'id' => 66,
                'name' => 'Home.secondroutineDetail',
                'value' => null,
                'title' => 'Home second routine Detail',
                'description' => 'Home second routine Detail in the param we will manage the other content',
                'input_type' => 'file',
                'editable' => 1,
                'weight' => null,
                'params' => $this->getRoutineParamsHTML('12:00 PM to 01:30 PM','Industry Trends Seminar','Navigating Future Challenges','Dive into an insightful seminar on current industry trends and future challenges. Industry experts will share their perspectives on navigating the dynamic landscape of industrial development.'),
                'order' => 0,
            ],
            [
                'id' => 67,
                'name' => 'Home.thirdroutineDetail',
                'value' => null,
                'title' => 'Home third routine Detail',
                'description' => 'Home third routine Detail in the param we will manage the other content',
                'input_type' => 'file',
                'editable' => 1,
                'weight' => null,
                'params' => $this->getRoutineParamsHTML('02:00 PM to 03:30 PM','Networking Session','Connect with Industry Leaders','Engage in a networking session with key industry leaders and potential business partners. Build valuable connections and explore collaborative opportunities within the industrial sector.'),
                'order' => 0,
            ],
            [
                'id' => 68,
                'name' => 'Home.fourthroutineDetail',
                'value' => null,
                'title' => 'Home fourth routine Detail',
                'description' => 'Home fourth routine Detail in the param we will manage the other content',
                'input_type' => 'file',
                'editable' => 1,
                'weight' => null,
                'params' => $this->getRoutineParamsHTML('04:00 PM to 05:30 PM','Product Showcase','Innovative Industrial Solutions','Witness a diverse array of industrial products and solutions in our exclusive product showcase. Explore innovations that are shaping the future of the industrial landscape.'),
                'order' => 0,
            ],
        ];

        foreach ($data as $routineDetail) {
            DB::table('configurations')->updateOrInsert(
                ['id' => $routineDetail['id']],
                $routineDetail
            );
        }
    }

    private function getRoutineParamsHTML($time, $subjectTitle, $chapterTitle, $paragraph)
    {
        $paramsArray = [
            'time' => $time,
            'subjectTitle' => $subjectTitle,
            'chapterTitle' => $chapterTitle,
            'paragraph' => $paragraph
        ];

        return serialize($paramsArray);
    }
}
