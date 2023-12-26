<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ExhibitionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Insert sample data into the exhibitions table
        for ($i = 1; $i <= 10; $i++) {
            DB::table('exhibitions')->insert([
                'user_id' => 1, // Assuming you have users in the users table
                'title' => "Exhibition Title $i",
                'slug' => Str::slug("Exhibition Title $i"),
                'year' => rand(2000, 2022),
                'content' => "Exhibition Content $i",
                'excerpt' => "Exhibition Excerpt $i",
                'comment' => rand(0, 1),
                'meta_title' => "Meta Title $i",
                'meta_description' => "Meta Description $i",
                'meta_keywords' => "Keyword1, Keyword2, Keyword3",
                'password' => bcrypt("password$i"),
                'status' => rand(1, 5),
                'visibility' => ['Pu', 'PP', 'Pr'][rand(0, 2)],
                'publish_on' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
