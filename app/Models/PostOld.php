<?php

namespace App\Models;

use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\File;
use Spatie\YamlFrontMatter\YamlFrontMatter;



class PostOld
{

    public function __construct(
        public $body,
        public $excert,
        public $title,
        public $slug

    ){}

    public static function find($slug){
        return static::all()->firstWhere('slug', $slug);
/*        if(!file_exists($path = resource_path("posts/$slug.html"))){
//            return redirect('/');
              throw new ModelNotFoundException();
        }

        return cache()->remember("posts.{$slug}", now()->addMinute(), fn() => file_get_contents($path));
 */
    }

    public static function findOrFail($slug){
        $post = self::find($slug);
        if (!$post)
            throw new ModelNotFoundException();

        return $post ;
    }

    public static function all()
    {
        return collect(File::files(resource_path("posts/")))
            ->map(fn($file) => YamlFrontMatter::parseFile($file))
            ->map(fn($document) => new Post(
                $document->body(),
                $document->excert,
                $document->title,
                $document->slug
            ));
        /*$posts = array_map(function ($file){
            $document = YamlFrontMatter::parseFile($file);

             return new Post(
                $document->body(),
                $document->excert,
                $document->title,
                $document->slug
             );
             },$files);*/
        /////
        /*foreach ($files as $file){
            $document = YamlFrontMatter::parseFile($file);

            $posts[]= new Post(
                $document->body(),
                $document->excert,
                $document->title,
                $document->slug
            );

        }*/

        /*        $files = File::files(resource_path("posts/"));
        return array_map(fn($file)=>$file->getContents(), $files );
*/
    }
}
