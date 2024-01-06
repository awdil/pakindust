<!-- home banner section html start  asset('storage/configuration-images/'.$image)  -->
<?php
//dd(DzHelper::getConfigDataByName('Site.banner_background')->id);
//$result = DzHelper::getConfigDataByName('Site.banner_background');
$url= route('configuration.publicImagePreview', ['id' => DzHelper::getConfigDataByName('Site.banner_background')->id]);
?>
<section class="home-banner" style="background-image: url('{{ asset($url) }}');">
	<div class="overlay"></div>
	<div class="container">
		<div class="home-banner-inner">
			<div class="row align-items-center">
				<div class="col-lg-6 banner-top-img">
					<figure class="banner-image">
						<div class="pattern-overlay overlay-circle"></div>
						<img class="filter-brightnes-two" src="{{ theme_asset('img/eventum-img38.png')}}" alt="">
					</figure>
				</div>
				<div class="col-lg-6">
					<div class="banner-content">
						<h3 class="banner-title">{{config('Site.banner_title')}}</h3>
						<span class="banner-title middle-title">{{config('Site.middle_title')}}</span>
						<div class="banner-title-divider-center-white"></div>
						<h1 class="banner-title">{{config('Site.title_after_middle')}}</h1>
						<p class="banner-paragraph">
							{{config('Site.banner_paragraph')}}
						</p>
						<div class="banner-button">
							<a href="" class="button-round-primary">BOOK RESERVATION</a>
							<a href="" class="button-round-white-transparent">VIEW SCHEDULE</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom-shape">
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none">
			<path class="elementor-shape-fill" d="M615.2,96.7C240.2,97.8,0,18.9,0,0v100h1000V0C1000,19.2,989.8,96,615.2,96.7z"></path>
		</svg>
	</div>
</section>