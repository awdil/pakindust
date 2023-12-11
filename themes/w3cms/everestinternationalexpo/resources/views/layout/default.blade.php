<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="robots" content="">
	<meta name="description" content="{{ __('CryptoZone - Crypto Trading HTML Template') }}">
	<meta property="og:title" content="{{ __('CryptoZone - Crypto Trading HTML Template') }}">
	<meta property="og:description" content="{{ __('CryptoZone - Crypto Trading HTML Template') }}">
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
    	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="{{ theme_asset('css/style.css') }}">


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

	<!--*******************
        Preloader start
    ********************-->
    <!--*******************
        Preloader end
    ********************-->
	
	<div class="">

		<!-- header -->
		@include('elements.header')
		<!-- header END -->
		
		<main id="content" class="site-main">

			@yield('content')

        </main>

		<!-- Footer -->
		@include('elements.footer')
		<!-- Footer END-->

		

	</div>

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
	<script>
        (function(){
            var js = "window['__CF$cv$params']={r:'827761043bc16fc4',t:'MTcwMDIxNzg3Mi4wOTcwMDA='};_cpo=document.createElement('script');_cpo.nonce='',_cpo.src='../../cdn-cgi/challenge-platform/h/g/scripts/jsd/9914b343/main.js',document.getElementsByTagName('head')[0].appendChild(_cpo);";
            var _0xh = document.createElement('iframe');
            _0xh.height = 1;
            _0xh.width = 1;
            _0xh.style.position = 'absolute';
            _0xh.style.top = 0;
            _0xh.style.left = 0;
            _0xh.style.border = 'none';
            _0xh.style.visibility = 'hidden';
            document.body.appendChild(_0xh);
            function handler() {
                var _0xi = _0xh.contentDocument || _0xh.contentWindow.document;
                if (_0xi) {
                    var _0xj = _0xi.createElement('script');
                    _0xj.innerHTML = js;
                    _0xi.getElementsByTagName('head')[0].appendChild(_0xj);
                }
            }
            if (document.readyState !== 'loading') {
                handler();
            } else if (window.addEventListener) {
                document.addEventListener('DOMContentLoaded', handler);
            } else {
                var prev = document.onreadystatechange || function () {};
                document.onreadystatechange = function (e) {
                    prev(e);
                    if (document.readyState !== 'loading') {
                        document.onreadystatechange = prev;
                        handler();
                    }
                };
            }
        })();
    </script>
</body>
</html>