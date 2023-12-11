@extends('layout.default')

@section('content')

<!-- Content -->

    <!-- Blog Post -->
    
    <!-- Banner  -->
    @include('elements.common-banner-inner-blog')
    <!-- Banner End -->

    <div class="blog-archive-section">
        <div class="blog-archive-inner">
            <div class="container">
                <div class="row">
                    
                    @if (DzHelper::dzHasSidebar())
                    <div class="col-lg-8 col-md-7 col-sm-12 col-12">
                    @else
                    <div class="col-12 jjjjjjjjjjjjj">
                    @endif
                        <div class="inner-blog-wrapper">

                            @forelse($blogs as $blog)
                                <article class="post">
                                    <!-- <div class="dz-card style-1 blog-half">
                                        <div class="dz-media">
                                            <a href="{{ DzHelper::laraBlogLink($blog->id) }}">
                                                @if(optional($blog->feature_img)->value)
                                                    <img src="{{ asset('storage/blog-images/'.$blog->feature_img->value) }}" alt="{{ __('Blog Image') }}">
                                                @else
                                                    <img src="{{ asset('images/noimage.jpg') }}" alt="{{ __('Blog Image') }}">
                                                @endif
                                            </a>
                                            <ul class="dz-badge-list">
                                                <li><a href="javascript:void(0);" class="dz-badge">{{ Carbon\Carbon::parse($blog->publish_on)->format('F j, Y') }}</a></li>
                                            </ul>
                                            <a href="{{ DzHelper::laraBlogLink($blog->id) }}" class="btn btn-secondary">{{ __('Read More') }}</a>
                                        </div>
                                        <div class="dz-info">
                                            <div class="dz-meta">
                                                <ul>
                                                    <li class="post-author">
                                                        <a href="{{ DzHelper::author($blog->user_id) }}">
                                                            <span>{{ __('By') }} {{ $blog->user->name }}</span>
                                                        </a>
                                                    </li>
                                                    <li class="post-date"><a href="javascript:void(0);">{{ Carbon\Carbon::parse($blog->publish_on)->format('F j, Y') }}</a></li>
                                                </ul>
                                            </div>
                                            @php
                                                if($blog->visibility != 'Pu'){
                                                    $blog_visibility = $blog->visibility == 'Pr' ? __('Private: ') : __('Protected: ') ;
                                                }else {
                                                    $blog_visibility = '';
                                                }
                                            @endphp
                                            <h4 class="dz-title"><a href="{{ DzHelper::laraBlogLink($blog->id) }}">{{ $blog_visibility }}{{ Str::limit($blog->title, 40, ' ...') }}</a></h4>
                                            <p>{{ Str::limit($blog->excerpt, 60, ' ...') }}</p>
                                        </div>
                                    </div> -->
                                    <article class="">
                                        <figure class="feature-image">
                                            <img src="{{ theme_asset('/img/eventum-img42.jpg')}}" alt="">
                                        </figure>
                                        <div class="entry-content">
                                        @php
                                            if($blog->visibility != 'Pu'){
                                                $blog_visibility = $blog->visibility == 'Pr' ? __('Private: ') : __('Protected: ') ;
                                            }else {
                                                $blog_visibility = '';
                                            }
                                        @endphp
                                            <h5>
                                            <a href="{{ DzHelper::laraBlogLink($blog->id) }}">{{ $blog_visibility }}{{ Str::limit($blog->title, 40, ' ...') }}</a>
                                            </h5>
                                            <div class="entry-meta">
                                                <span class="byline">
                                                    <a href="{{ DzHelper::author($blog->user_id) }}">
                                                            <span>{{ __('By') }} {{ $blog->user->name }}</span>
                                                    </a>
                                                </span>
                                                <span class="posted-on">
                                                    <a href="blog-archive.html">{{ Carbon\Carbon::parse($blog->publish_on)->format('F j, Y') }}</a>
                                                </span>
                                                <span class="comment">
                                                    <a href="blog-archive.html">No Comments</a>
                                                </span>
                                            </div>
                                            <p class="blog-info">
                                                {{ Str::limit($blog->excerpt, 60, ' ...') }}
                                            </p>
                                            <span class="blog-link">
                                                <a href="{{ DzHelper::laraBlogLink($blog->id) }}" class="btn btn-secondary">{{ __('Read More') }}</a>
                                            </span>
                                        </div>
                                    </article>
                                </div>
                                
                            @empty
                            <div class="col-md-12">{{ __('Records Not found.') }}</div>
                            @endforelse
                            <div class="col-lg-12 m-b40">
                                {!! $blogs->links('elements.pagination') !!}
                            </div>
                        </div>
                    </div>
                    @include('widgets.sidebar')
                </div>
            </div>    
        </div>
    </div>
    <!-- Blog Post End -->

<!-- End Content -->

@endsection