<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class HomeAboutRightContentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $list1 = 'Everest provides accurate match-making services for exhibitors, ensuring a comprehensive and beneficial experience for each participant.';
        $list2 = 'The company leverages the abundant resources in Pakistan, offering exhibitors services that go beyond the exhibition itself.';
        $data = [
            
                'id' => 70,
                'name' => 'Home.aboutRightContent',
                'value' => 'INTRODUCTION',
                'title' => 'Home Introduction Detail',
                'description' => 'Home about content and other data',
                'input_type' => 'text',
                'editable' => 1,
                'weight' => null,
                'params' => $this->getHomeAboutHTML("KNOW MORE ABOUT PAKISTAN INDUSTTRIAL EXPO",'Everest International Expo (Pvt.) Ltd, based in Pakistan, is a renowned expo company known for precise match-making services. Leveraging abundant resources, it ensures exhibitors benefit beyond the exhibition, earning global recognition for professionalism and quality.',$list1,$list2),
                'order' => 0,
            
        ];

        DB::table('configurations')->updateOrInsert(
            ['id' => $data['id']],
            $data
        );
    }

    private function getHomeAboutHTML($sectiontitle, $sectionParagraph, $aboutlist1, $aboutlist2)
    {
        $paramsArray = [
            'sectionTitle' => $sectiontitle,
            'sectionParagraph' => $sectionParagraph,
            'aboutFirstlist' => $aboutlist1,
            'aboutSecondtlist' => $aboutlist2,
        ];

        return serialize($paramsArray);
    }
}
