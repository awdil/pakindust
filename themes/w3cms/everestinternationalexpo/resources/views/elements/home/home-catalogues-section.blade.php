 <!-- home home-catalogues-section  -->
 <?php 
 //dd($exhibitions); 
 $exhibitionCountOnHomePage = config('Site.exhibition_count_on_homepage');
 //dd($exhibitionCountOnHomePage);
 ?>
 <section class="speaker-event-section">
    <div class="container">
        <div class="section-head text-center col-lg-8 offset-lg-2">
            <h3 class="section-title">Exhibitors</h3>
            <p class="section-paragraph">
                {{config('Home.exhibition_expert')}}
            </p>
        </div>
        <div class="group-member">
            <div class="row justify-content-center">
                @foreach($exhibitions as $exhibition)
                    <div class="col-lg-3 col-md-4 col-sm-6 px-2 px-sm-3">
                        <div class="team-member">
                            <figure class="team-img figure-round-border">
                                <img src="{{ route('exhibition.exhibitionPublicImagePreview', ['id' =>  $exhibition->id]) }}" alt="{{ $exhibition->title }}">
                            </figure>
                            <div class="team-member-info">
                                <div class="team-content pb-3">
                                    <h5 class="author-name"><a href="{{ url('exhibition.detail', $exhibition->slug) }}">{{ $exhibition->title }}</a></h5>
                                    <span class="author-prof">{{ $exhibition->year }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="event-speaker-btn">
            <a href="{{url('exhibitors')}}" class="button-round-primary">VIEW ALL EXHIBITORS</a>
        </div>
    </div>
</section>