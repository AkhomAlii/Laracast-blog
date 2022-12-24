<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

    //    \App\Models\User::truncate();
    //    Category::truncate();
    //    Post::truncate();
//         \App\Models\User::factory()->create([
//             'name' => 'Test User',
//             'email' => 'test@example.com',
//         ]);
//         Category::create([
//             'name'=>'Personal',
//             'slug' => 'personal'
//         ]);
//        Category::create([
//            'name'=>'Family',
//            'slug' => 'family'
//        ]);
//        Category::create([
//            'name'=>'Work',
//            'slug' => 'work'
//        ]);
//
//        Post::create([
//            'slug' => 'somefuck',
//            'title' => 'eh ya a7a',
//            'excerpt' => 'aclsndlcksdn',
//            'body'=>'<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci consequatur iste iure quaerat quasi quisquam sequi voluptas voluptatum. Consectetur ipsa magni maiores, nulla numquam optio sed voluptate? Amet, maiores, natus.</p>','category_id' => 1,
//            'user_id' => 1 ]
//        ) ;
//        Post::create([
//                'slug' => 'another one',
//                'title' => 'eh ya a7a',
//                'excerpt' => 'aclsndlcksdn',
//                'body'=>'<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci consequatur iste iure quaerat quasi quisquam sequi voluptas voluptatum. Consectetur ipsa magni maiores, nulla numquam optio sed voluptate? Amet, maiores, natus.</p>','category_id' => 1,
//                'user_id' => 1 ]
//        ) ;
//
//        Post::create([
//                'slug' => 'shit',
//                'title' => 'talk to with my hands typed',
//                'excerpt' => 'aclsndlcksdn',
//                'body'=>'<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci consequatur iste iure quaerat quasi quisquam sequi voluptas voluptatum. Consectetur ipsa magni maiores, nulla numquam optio sed voluptate? Amet, maiores, natus.</p>','category_id' => 2,
//                'user_id' => 1 ]
//        );

        Post::factory(20)->create();
    }
}
