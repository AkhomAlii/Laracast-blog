<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\NewsletterController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionController;
use App\Models\Category;
use App\Models\Post;
use App\Services\Newsletter;
use Illuminate\Support\Facades\Route;
use Illuminate\Validation\ValidationException;
use Spatie\YamlFrontMatter\YamlFrontMatter;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/posts/{id}', function ($id) {
//    // This Finds a post by it's slug and pass it to a view called post
//    /*
////$post = file_get_contents(resource_path("posts/$a7a.html"));
//
//
//
////    ddd($path);
//
//    if(!file_exists($path = resource_path("posts/$slug.html"))){
//        return redirect('/');
////        abort(404);
////    echo'something nice';
//    }
//
//    $post = cache()->remember("posts.{$slug}", now()->addMinute(), fn() => file_get_contents($path));
//
//
//    return view('post',[ 'post' => $post ]);*/
////    $post = Post::find($slug);
////    return view('post', [ 'post' => Post::find($id) ]);
//    return view('post', [ 'post' => Post::findOrFail($id) ]);
//
//})->where('slug','[A-z_\-]+');



/*after having the category VM we don't need this any more*/
// Route::get('/categories/{category:slug}', function (Category $category){
    
    
//     return view('posts', [
//        'posts'=>$category->posts->load(['category', 'author']),
//         'currentCategory' => $category,
//         'categories' => Category::all()
//     ]);
// });

// Route::get('/author/{author:name}', function (\App\Models\User $author){
    //     return view('posts.index',[
        //        'posts' => $author->posts->load(['category', 'author']),
        //     ]);
        // });
        
Route::get('/',[PostController::class, 'index'])->name('home');
Route::get('posts/{post:slug}',[PostController::class, 'show']);
Route::get('post/create', [PostController::class, 'create'])->middleware('admin');

Route::post('posts/{post:slug}/comment',[CommentController::class, 'store']);


Route::get('register', [RegisterController::class, 'create'])->middleware('guest');
Route::post('register', [RegisterController::class, 'store'])->middleware('guest');

Route::get('login', [SessionController::class, 'create'])->middleware('guest');
Route::post('sessions', [SessionController::class, 'store'])->middleware('guest');

Route::post('logout', [SessionController::class, 'destroy'])->middleware('auth');


Route::post('newsletter', NewsletterController::class);