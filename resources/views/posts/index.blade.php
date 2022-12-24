{{--<!doctype html>--}}
{{--<html>--}}
{{--<head>--}}

{{--    <link rel="stylesheet" href="/app.css">--}}
{{--    <title>My Blog</title>--}}
{{--</head>--}}
{{--<body>--}}
{{--    <?php foreach ($posts as $post):?>--}}
{{--    @foreach($posts as $post)--}}
{{--    <article>--}}
{{--    <h1> <a href="/posts/{{ $post->slug}}"> <?= $post->title;?></a></h1>--}}
{{--        <p><?= $post->excerpt;?></p>--}}

{{--        <h4>By <a href="/user/{{$post->author->id}}"> {{$post->author->name}}</a> In <a href="/categories/{{ $post->category->slug}}"> <?= $post->category->name;?></a></h4>--}}
{{--    </article>--}}
{{--    <?php endforeach;?>--}}
{{--    @endforeach--}}
{{--</body>--}}
{{--</html>--}}

<x-layout>

    @include('posts._header')

    <main class="max-w-6xl mx-auto mt-6 lg:mt-20 space-y-6">
        @if($posts->count())
            <x-posts-grid :posts="$posts" />

            {{ $posts->links() }}
        @else
            <p>
                No Posts Yet
            </p>
        @endif
    </main>

</x-layout>
