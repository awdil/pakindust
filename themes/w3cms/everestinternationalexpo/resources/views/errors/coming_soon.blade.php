
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="robots" content="">
	<meta name="description" content="{{ __('Pakindustrialexpo - Everest International') }}">
	<meta property="og:title" content="{{ __('Pakindustrialexpo - Everest International') }}">
	<meta property="og:description" content="{{ __('Pakindustrialexpo - Everest International') }}">
	<meta property="og:image" content="">
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON -->
	@if(config('Site.favicon'))
        <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('storage/configuration-images/'.config('Site.favicon')) }}">
    @else 
        <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('images/favicon.png') }}">
    @endif
	
	<!-- PAGE TITLE HERE -->
	<title>{{ config('Site.title') ? config('Site.title') : __('PAKCMS Laravel') }}</title>
	
	<!-- MOBILE SPECIFIC -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="{{ theme_asset('css/style.css') }}">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="{{ theme_asset('vendors/bootstrap/css/bootstrap.min.css') }}" media="all">

	<!-- Fonts Awesome CSS -->
	<link rel="stylesheet" type="text/css" href="{{ theme_asset('vendors/fontawesome/css/all.min.css') }}">

	<!-- Elmentkit Icon CSS -->
	<link rel="stylesheet" type="text/css" href="{{ theme_asset('vendors/elementskit-icon-pack/assets/css/ekiticons.css') }}">

	<!-- progress bar CSS -->
	<link rel="stylesheet" type="text/css" href="{{ theme_asset('vendors/progressbar-fill-visible/css/progressBar.css') }}">

	<!-- jquery-ui css -->
	<link rel="stylesheet" type="text/css" href="{{ theme_asset('vendors/jquery-ui/jquery-ui.min.css') }}">

	<!-- modal video css -->
	<link rel="stylesheet" type="text/css" href="{{ theme_asset('vendors/modal-video/modal-video.min.css') }}">

	<!-- light box css -->
	<link rel="stylesheet" type="text/css" href="{{ theme_asset('vendors/fancybox/dist/jquery.fancybox.min.css') }}">

	<!-- slick slider css -->
	<link rel="stylesheet" type="text/css" href="{{ theme_asset('vendors/slick/slick.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ theme_asset('vendors/slick/slick-theme.css') }}">


	<!-- Google Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap">

    <style>
        :root {
            --base-url: '{{ theme_asset('') }}';
        }
    </style>
</head>
<body class="home">
    <div id="page" class="full-page">
        <!-- coming soon start -->
        <div class="comming-soon-section" style="background-image: url({{ theme_asset('img/eventum-img1.jpg')}});">
            <div class="overlay"></div>
            <div class="container">
                <div class="comming-soon-wrap">
                    <section class="site-identity">
                        <h1 class="site-title">
                            <a href="index.html">
                                <img class="white-logo" src="assets/img/eventum4.png" alt="logo">
                            </a>
                        </h1>
                    </section>
                    <article class="comming-soon-content">
                        <h4>We Are Coming <span class="text-primary">Soon !</span></h4>
                        <p>{!! config('Site.comingsoon_message') !!}</p>
                    </article>
                    <!-- Time count down html -->
                    <div class="time-counter-wrap">
                        <div class="time-counter" data-date="2023-12-24 23:58:58">
                            <!-- Date Formate Input yyyy-mm-dd hh:mm:ss -->
                            <div class="counter-time">
                                <span class="counter-days">39</span>
                                <span class="label-text">Days</span>
                            </div>
                            <div class="counter-time">
                                <span class="counter-hours">10</span>
                                <span class="label-text">Hours</span>
                            </div>
                            <div class="counter-time">
                                <span class="counter-minutes">46</span>
                                <span class="label-text">Minutes</span>
                            </div>
                            <div class="counter-time">
                                <span class="counter-seconds">50</span>
                                <span class="label-text">Seconds</span>
                            </div>
                        </div>
                    </div>
                    <div class="comming-soon-footer">
                        <div class="row align-items-center">
                            <div class="col-lg-8">
                                <div class="com-contact-info">
                                    <ul>
                                        <li>
                                            <a href="tel:+98425689721"><i class="fas fa-phone-alt"></i> (+984) 256 897 21</a>
                                        </li>
                                        <li>
                                            <a href="https://demo.bosathemes.com/cdn-cgi/l/email-protection#2940474f46697d5b485f4c45074a4644">
                                                <i aria-hidden="true" class="fas fa-envelope-open-text"></i>
                                                <span class="__cf_email__" data-cfemail="cba2a5ada48bafa4a6aaa2a5e5a8a4a6">[email&#160;protected]</span>
                                            </a>
                                        </li>
                                        <li>
                                            <i class="fas fa-map-marker-alt"></i> Pak
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="social-icons">
                                    <ul>
                                        <li>
                                            <a href="https://www.facebook.com/" target="_blank">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.twitter.com/" target="_blank">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.google.com/" target="_blank">
                                                <i class="fab fa-google"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.instagram.com/" target="_blank">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.youtube.com/" target="_blank">
                                                <i class="fab fa-youtube"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="overlay"></div>
        </div>
        <!-- coming soon end -->
    </div>

<!--**********************************
    Scripts
***********************************-->
<!-- Required vendors -->
<script src="{{ theme_asset('vendors/jquery/jquery.js') }}"></script>	
<script src="{{ theme_asset('/vendors/waypoint/jquery.waypoints.min.js') }}"></script>
<script src="{{ theme_asset('/vendors/bootstrap/js/bootstrap.min.js') }}"></script>
<script src="{{ theme_asset('/vendors/jquery-ui/jquery-ui.min.js') }}"></script>
<script src="{{ theme_asset('/vendors/progressbar-fill-visible/js/progressBar.min.js') }}"></script>
<script src="{{ theme_asset('/vendors/countdown-date-loop-counter/loopcounter.js') }}"></script>
<script src="{{ theme_asset('/vendors/counterup/jquery.counterup.js') }}"></script>
<script src="{{ theme_asset('/vendors/modal-video/jquery-modal-video.min.js') }}"></script>
<script src="{{ theme_asset('/vendors/masonry/masonry.pkgd.min.js') }}"></script>
<script src="{{ theme_asset('/vendors/fancybox/dist/jquery.fancybox.min.js') }}"></script>
<script src="{{ theme_asset('/vendors/slick/slick.min.js') }}"></script>
<script src="{{ theme_asset('/vendors/slick-nav/jquery.slicknav.js') }}"></script>
<script src="{{ theme_asset('/js/custom.js') }}"></script>
</body>
</html>