@extends('front.layouts.app')

@section('main_content')
<div class="page-top" style="background-image: url({{ asset('storage/uploads/photo/'.$global_setting_data->banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Category: {{ $post_category->name }}</h2>
                <div class="breadcrumb-container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Category</li>
                        <li class="breadcrumb-item active">{{ $post_category->name }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="blog my-5">
    <div class="container">
        <div class="row">
            @foreach($posts as $post)
            <div class="col-lg-4 col-md-6 shadow p-4">
                <div class="item">
                    <div class="photo">
                        <img src="{{ asset('storage/uploads/photo/'.$post->photo) }}" alt="" />
                    </div>
                    <div class="text">
                        <h2>
                            <a href="{{ route('post.show',$post->slug) }}">{{ $post->title }}</a>
                        </h2>
                        <div class="short-des">
                            <p>
                                {!! nl2br($post->short_description) !!}
                            </p>
                        </div>
                        <div class="mt-3">
                            <a href="{{ route('post.show',$post->slug) }}" class="btn-style">Show More</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            <div class="col-md-12">
                {{ $posts->links() }}
            </div>
        </div>
    </div>
</div>
@endsection
