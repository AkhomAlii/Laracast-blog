<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    //

    public function index(){


//   this can be in it's own function

    //     $posts = Post::latest();
    // if( request('search')){

    //     $posts
    //         ->where('title', 'like', '%' . request('search') . '%')
    //         ->orWhere('body', 'like', '%' . request('search') . '%');
    // }


//    return view('posts', ['posts'=> Post::all()]);

//    \Illuminate\Support\Facades\DB::listen(function ($query){
//        logger($query->sql, $query->bindings);
//    });
//    return view('posts', ['posts'=> Post::all()]);
    /*this is just to avoid the N+1 problem*/
    return view('posts.index', [
//        'posts' => Post::with('category')->get()
        /*instead we gonna load it sorted*/
        // 'posts' => Post::latest('published_at')->with('category', 'author')->get(),
        
        // let's do some searching 
        'posts' => Post::latest()->filter(/*request()->only('search')*/   request(['search', 'category', 'author'])  )->paginate(3)->withQueryString(),
        'currentCategory' => Category::firstWhere('slug', request('category'))
    ]);
}


    // protected function getPosts()
    // {
    //     # code...
    //     $posts = Post::latest();
    //     if( request('search')){

    //         $posts
    //             ->where('title', 'like', '%' . request('search') . '%')
    //             ->orWhere('body', 'like', '%' . request('search') . '%');
    // }
    //     return $posts->get();


    // /*this can be more cleaner*/
    // }



    public function show(POST $post)
    {
        # code...
        return view('posts.show',[
            'post' => $post
        ]) ;
    }


    public function create( )
    {

        return view('posts.create');
    }

}
 