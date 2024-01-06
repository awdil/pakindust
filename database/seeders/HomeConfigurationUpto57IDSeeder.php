<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HomeConfigurationUpto57IDSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Insert or update data in the 'configurations' table
        DB::table('configurations')->updateOrInsert([
            'id' => 51
        ], [
            'name' => 'Home.eventStart',
            'value' => '2024-01-03',
            'title' => 'Event Schedule Start Date',
            'description' => 'Event Start Date',
            'input_type' => 'date',
            'editable' => 1,
            'weight' => NULL,
            'params' => '',
            'order' => 0,
        ]);

        DB::table('configurations')->updateOrInsert([
            'id' => 52
        ], [
            'name' => 'Home.eventEnd',
            'value' => '2024-01-07',
            'title' => 'Event Schedule End Date',
            'description' => 'Event Schedule End Date',
            'input_type' => 'date',
            'editable' => 1,
            'weight' => NULL,
            'params' => '',
            'order' => 0,
        ]);

        DB::table('configurations')->updateOrInsert([
            'id' => 53
        ], [
            'name' => 'Home.eventHeading',
            'value' => 'What We Do',
            'title' => NULL,
            'description' => 'event details what we do',
            'input_type' => 'text',
            'editable' => 1,
            'weight' => NULL,
            'params' => NULL,
            'order' => 0,
        ]);

        DB::table('configurations')->updateOrInsert([
            'id' => 54
        ], [
            'name' => 'Home.eventDescription',
            'value' => 'Everest International Expo is organizing exhibitions on both national and international levels.We are changing our strategies with changing business environment.We are moving towards smart exhibitions as well',
            'title' => 'Event Service Description',
            'description' => 'Service Description',
            'input_type' => 'text',
            'editable' => 1,
            'weight' => NULL,
            'params' => '',
            'order' => 0,
        ]);

        DB::table('configurations')->updateOrInsert([
            'id' => 55
        ], [
            'name' => 'Home.eventServices',
            'value' => $this->defaultEventData(),
            'title' => 'Home Services Section',
            'description' => 'All Services Of home Section',
            'input_type' => 'text',
            'editable' => 1,
            'weight' => NULL,
            'params' => '',
            'order' => 0,
        ]);

        DB::table('configurations')->updateOrInsert([
            'id' => 56
        ], [
            'name' => 'Home.scheduleSection',
            'value' => '<span class="section-sub-title">SCHEDULE DETAILS</span><h3 class="section-title">INFORMATION OF EVENT SCHEDULE !</h3><p class="section-paragraph">Discover the detailed schedule for our upcoming events. Immerse yourself in a carefully curated agenda filled with engaging activities, informative sessions, and valuable networking opportunities. Whether you`re interested in in-person networking, boosting creativity, or attending after-party events, our schedule has something for everyone. Join us on the following dates to make the most out of your event experience</p>',
            'title' => 'Schedule Section',
            'description' => 'Schedule Section Content',
            'input_type' => 'textarea',
            'editable' => 1,
            'weight' => NULL,
            'params' => '',
            'order' => 0,
        ]);

        DB::table('configurations')->updateOrInsert([
            'id' => 57
        ], [
            'name' => 'Home.eventLocation',
            'value' => 'Hall No. 1 & 2, Expo Center, Lahore, Punjab, Pakistan',
            'title' => 'Event Location',
            'description' => 'Where is the Event Location',
            'input_type' => 'text',
            'editable' => 1,
            'weight' => NULL,
            'params' => '',
            'order' => 0,
        ]);
    }

    function defaultEventData()
    {
        // $eventData = [
        //     1 => [
        //         'icon' => 'icon-communication',
        //         'heading' => 'IN PERSON NETWORKING',
        //         'description' => 'Nemo cubilia non, exercitationem ridiculus modi faucibus nullam animi suspendie in porttitor.',
        //     ],
        //     2 => [
        //         'icon' => 'icon-idea_generate',
        //         'heading' => 'BOOST CREATIVITY',
        //         'description' => 'Nemo cubilia non, exercitationem ridiculus modi faucibus nullam animi suspendie in porttitor.',
        //     ],
        //     3 => [
        //         'icon' => 'icon-drink',
        //         'heading' => 'AFTER PARTY EVENT',
        //         'description' => 'Nemo cubilia non, exercitationem ridiculus modi faucibus nullam animi suspendie in porttitor.',
        //     ],
        //     4 => [
        //         'icon' => 'icon-brain',
        //         'heading' => 'SPARK CREATIVITY',
        //         'description' => 'Nemo cubilia non, exercitationem ridiculus modi faucibus nullam animi suspendie in porttitor.',
        //     ],
        //     5 => [
        //         'icon' => 'icon-badge',
        //         'heading' => 'TOP SPEAKERS',
        //         'description' => 'Nemo cubilia non, exercitationem ridiculus modi faucibus nullam animi suspendie in porttitor.',
        //     ],
        //     6 => [
        //         'icon' => 'icon-team2',
        //         'heading' => 'POTENTIAL CLIENTS',
        //         'description' => 'Nemo cubilia non, exercitationem ridiculus modi faucibus nullam animi suspendie in porttitor.',
        //     ],
        // ];

        $eventData = [
            1 => [
                'icon' => 'icon-communication',
                'heading' => 'IN-PERSON NETWORKING',
                'description' => 'Connect with industry professionals in our exclusive in-person networking sessions. Explore opportunities, build relationships, and expand your business network.',
            ],
            2 => [
                'icon' => 'icon-idea_generate',
                'heading' => 'BOOST CREATIVITY',
                'description' => 'Ignite your creative spark with engaging workshops and interactive sessions designed to boost creativity. Discover innovative ideas and strategies to apply in your work.',
            ],
            3 => [
                'icon' => 'icon-drink',
                'heading' => 'NETWORKING GALA',
                'description' => 'Join us at the Networking Gala during Everest International Expo. Connect with industry leaders, government officials, and fellow exhibitors in a festive atmosphere.',
            ],
            4 => [
                'icon' => 'icon-brain',
                'heading' => 'SPARK CREATIVITY',
                'description' => 'Immerse yourself in a world of creativity and innovation. Participate in hands-on activities, brainstorming sessions, and discussions to spark new ideas.',
            ],
            5 => [
                'icon' => 'icon-badge',
                'heading' => 'TOP SPEAKERS',
                'description' => 'Listen to industry experts and thought leaders as they share valuable insights and experiences. Gain knowledge from the best in the business.',
            ],
            6 => [
                'icon' => 'icon-team2',
                'heading' => 'POTENTIAL CLIENTS',
                'description' => 'Discover potential clients and business opportunities. Our expo provides a platform for networking and building relationships with potential clients and collaborators.',
            ],
        ];
        
        
        $serializedData = serialize($eventData);
        return $serializedData;
    }
}
