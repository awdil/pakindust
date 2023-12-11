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
                    <div class="col-lg-8 primary">
                        <div class="inner-blog-wrapper">
                            @forelse($blogs as $blog)
                                <article class="post">
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
                                                <a href="javascript:void(0);">{{ Carbon\Carbon::parse($blog->publish_on)->format('F j, Y') }}</a>
                                            </span>
                                        </div>
                                        <p class="blog-info">
                                            {{ Str::limit($blog->excerpt, 60, ' ...') }}
                                        </p>
                                        <span class="blog-link">
                                            <a href="{{ DzHelper::laraBlogLink($blog->id) }}">{{ __('Read More') }}</a>
                                        </span>
                                    </div>
                                </article>
                            @empty
                                <div class="col-md-12">{{ __('Records Not found.') }}</div>
                            @endforelse
                        </div>
                        <div class="post-navigation-wrap">
                            <nav>
                                {!! $blogs->links('elements.pagination') !!}
                            </nav>
                        </div>
                    </div>
                    <div class="col-lg-4 secondary">
                        <div class="sidebar">
                            @include('widgets.sidebar')
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Blog Post End -->

<!-- End Content -->

@endsection