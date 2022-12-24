<x-layout>



    <body style="font-family: Open Sans, sans-serif">
    <section class="px-6 py-8">

        <main class="max-w-6xl mx-auto mt-10 lg:mt-20 space-y-6">
            <article class="max-w-4xl mx-auto lg:grid lg:grid-cols-12 gap-x-10">
                <div class="col-span-4 lg:text-center lg:pt-14 mb-10">
                    <img src="/images/illustration-1.png" alt="" class="rounded-xl">

                    <p class="mt-4 block text-gray-400 text-xs">
                        Published <time>1 day ago</time>
                    </p>

                    <div class="flex items-center lg:justify-center text-sm mt-4">
                        <img src="/images/lary-avatar.svg" alt="Lary avatar">
                        <div class="ml-3 text-left">
                            <a href="/?author={{ $post->author->name }}" >
                                <h5 class="font-bold">{{ $post->author->name }}</h5>
                            </a>
                                <h6>Mascot at Laracasts</h6>
                        </div>
                    </div>
                </div>

                <div class="col-span-8">
                    <div class="hidden lg:flex justify-between mb-6">
                        <a href="/"
                           class="transition-colors duration-300 relative inline-flex items-center text-lg hover:text-blue-500">
                            <svg width="22" height="22" viewBox="0 0 22 22" class="mr-2">
                                <g fill="none" fill-rule="evenodd">
                                    <path stroke="#000" stroke-opacity=".012" stroke-width=".5" d="M21 1v20.16H.84V1z">
                                    </path>
                                    <path class="fill-current"
                                          d="M13.854 7.224l-3.847 3.856 3.847 3.856-1.184 1.184-5.04-5.04 5.04-5.04z">
                                    </path>
                                </g>
                            </svg>

                            Back to Posts
                        </a>

                        <div class="space-x-2">

                            <x-category-button :category="$post->category" />

                        </div>
                    </div>

                    <h1 class="font-bold text-3xl lg:text-4xl mb-10">
                        {{ $post->title }}
                    </h1>

                    <div class="space-y-4 lg:text-lg leading-loose">
                        {{ $post->body  }}
                    </div>

                </div>
            </article>
        </main>

    </section>
    </body>



    <section class="col-span-8 col-start-5 space-y-6 mt-10">
        
        @auth
            
        
        <x-panel>
            <form method="POST" action="/posts/{{ $post->slug }}/comment" >
                @csrf
                <header class="flex items-center">
                    <img src="https://i.pravatar.cc/100?u={{ auth()->id()}}" class="rounded-full" width="40" height="40">

                    <h2 class="ml-4">Wanna Join !</h2> 
                </header>

                <div class="mt-6">
                    <textarea name="body" class="w-full text-sm focus:outline-none focus:ring" rows="5" placeholder="What's on your mind"></textarea>
                </div>


                <div class="felx justify-end mt-6 pt-6 border-gray-200">
                    <button type="submit" class="bg-blue-500 text-white uppercase font-semibold text-xs py-2 px-10 rounded-2xl hover:bg-blue-600">
                        Post
                    </button>
                </div>

            </form>

        </x-panel>
        @else
        <div class="felx justify-end mt-6 pt-6 border-gray-200">
            <button  class="bg-blue-500 text-white uppercase font-semibold text-xs py-2 px-10 rounded-2xl hover:bg-blue-600">
                <a class="center" href="/login">Wanna Comment </a>
            </button>
        </div>
        @endauth

        @foreach ($post->comments as $comment )
            
        <x-post-comment :comment="$comment"/>
        
        @endforeach

    </section>

</x-layout>










{{--<link rel="stylesheet" href="/app.css">--}}

{{--<h1>{{ $post->title}}</h1>--}}
{{--<h4>By <a href="/user/{{$post->author->id}}">--}}
{{--        {{$post->author->name}}--}}
{{--    </a> In <a href="/categories/{{ $post->category->slug}}">--}}

{{--        <?= $post->category->name;?></a></h4>--}}

{{--<div>{!!  $post->body!!}</div>--}}

{{--<a href="/">Go Back</a>--}}
