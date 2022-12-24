<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $with = ['category', 'author'];
   

    public function scopeFilter($query, array $filters)
    {
      
        
        // if( $filters['search'] ?? false){
            
            //             $query
            //                 ->where('title', 'like', '%' . request('search') . '%')
            //                 ->orWhere('body', 'like', '%' . request('search') . '%');
            //     }
            /*one last climb*/
        $query->when($filters['search'] ?? false, fn($query, $search)=>
            $query->where(fn($query)=>
                    $query->where('title', 'like', '%' . $search . '%')
                    ->orWhere('body', 'like', '%' . $search . '%')
            )
        );


        $query->when($filters['author'] ?? false, fn($query, $author)=>
            $query->whereHas('author', fn($query)=>
                $query->where('name', $author)
            )     
        );

        $query->when($filters['category'] ?? false, fn($query, $category)=>
            $query->whereHas('category', fn($query)=>
                $query->where('slug', $category)
            )     
        );
                    /*$query->whereExists(fn($query) =>
                        $query->from('categories')
                            ->whereColumn('categories.id', 'posts.category_id')
                            ->where('categories.slug', $category)
                        )   more elegant way*/
    }


//    public function user(){
//        return $this->belongsTo(User::class);
//    }
    /*more representational  way*/
    public function author(){
        return $this->belongsTo(User::class , 'user_id');
    }
    
    public function category(){
        return $this->belongsTo(Category::class);
    }


    public function comments( )
    {
        return $this->hasMany(Comment::class);
    }

}