<!-- home gallery section html start -->
<?php
$data=DzHelper::getConfigDataByName('Home.eventGallery');
$unserializeData=unserialize($data->params);
$galleryCount = ($unserializeData['galleryCount'])?$unserializeData['galleryCount']:8;
?>
<section class="home-gallery">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="section-head">
                    <span class="section-sub-title ">{{ config('Home.eventGallery') }}</span>
                    <h3 class="section-title">
                    {{$unserializeData['sectionTitle']}}
                    </h3>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="section-head">
                    <p class="section-paragraph">
                    {{$unserializeData['sectionParagraph']}}
                    </p>
                </div>
            </div>
        </div>
        <div class="gallery-container">
            <div class="row grid">
                <div class="single-gallery grid-item col-lg-3 col-md-4 col-sm-6">
                    <figure class="gallery-img">
                        <a href="{{ theme_asset('img/eventum-img6.jpg') }}" data-fancybox="gallery">
                            <img src="{{ theme_asset('img/eventum-img17.jpg') }}" alt="">
                        </a>
                    </figure>
                </div>
                <div class="single-gallery grid-item col-lg-3 col-md-4 col-sm-6">
                    <figure class="gallery-img">
                        <a href="{{ theme_asset('img/eventum-img19.jpg') }}" data-fancybox="gallery">
                            <img src="{{ theme_asset('img/eventum-img019.jpg') }}" alt="">
                        </a>
                    </figure>
                </div>
                <div class="single-gallery grid-item col-lg-3 col-md-4 col-sm-6">
                    <figure class="gallery-img">
                        <a href="{{ theme_asset('img/eventum-img8.jpg') }}" data-fancybox="gallery">
                            <img src="{{ theme_asset('img/eventum-img23.jpg') }}" alt="">
                        </a>
                    </figure>
                </div>
                <div class="single-gallery grid-item col-lg-3 col-md-4 col-sm-6">
                    <figure class="gallery-img">
                        <a href="{{ theme_asset('img/eventum-img10.jpg') }}" data-fancybox="gallery">
                            <img src="{{ theme_asset('img/eventum-img20.jpg') }}" alt="">
                        </a>
                    </figure>
                </div>
                <div class="single-gallery grid-item col-lg-3 col-md-4 col-sm-6">
                    <figure class="gallery-img">
                        <a href="{{ theme_asset('img/eventum-img24.jpg') }}" data-fancybox="gallery">
                            <img src="{{ theme_asset('img/eventum-img24.jpg') }}" alt="">
                        </a>
                    </figure>
                </div>
                <div class="single-gallery grid-item col-lg-3 col-md-4 col-sm-6">
                    <figure class="gallery-img">
                        <a href="{{ theme_asset('img/eventum-img9.jpg') }}" data-fancybox="gallery">
                            <img src="{{ theme_asset('img/eventum-img21.jpg') }}" alt="">
                        </a>
                    </figure>
                </div>
                <div class="single-gallery grid-item col-lg-3 col-md-4 col-sm-6">
                    <figure class="gallery-img">
                        <a href="{{ theme_asset('img/eventum-img7.jpg') }}" data-fancybox="gallery">
                            <img src="{{ theme_asset('img/eventum-img22.jpg') }}" alt="">
                        </a>
                    </figure>
                </div>
                <div class="single-gallery grid-item col-lg-3 col-md-4 col-sm-6">
                    <figure class="gallery-img">
                        <a href="{{ theme_asset('img/eventum-img18.jpg') }}" data-fancybox="gallery">
                            <img src="{{ theme_asset('img/eventum-img18.jpg') }}" alt="">
                        </a>
                    </figure>
                </div>
            </div>
        </div>
    </div>
</section>