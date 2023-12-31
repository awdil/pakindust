
<!-- home about us section -->
<section class="home-aboutus">
	<div class="container">
		<div class="home-aboutus-inner">
			<div class="about-gallary">
				<figure class=" figure-round-border">
					<img src="{{theme_asset('img/eventum-img33.jpg')}}" alt="">
				</figure>
				<figure class=" figure-round-border">
					<img src="{{theme_asset('img/eventum-img35.jpg')}}" alt="">
				</figure>
				<figure class=" figure-round-border">
					<img src="{{theme_asset('img/eventum-img34.jpg')}}" alt="">
				</figure>
			</div>
			<div class="home-about-right">
				<div class="about-content">
					<figure class="about-top-right-img figure-round-border">
						<img src="{{theme_asset('img/eventum-img36.jpg')}}" alt="">
					</figure>
					<div class="section-head">
						<span class="section-sub-title ">INTRODUCTION</span>
						<h3 class="section-title">
							KNOW MORE ABOUT PAKISTAN INDUSTTRIAL EXPO
						</h3>
						<p class="section-paragraph">
						Everest International Expo (Pvt.) Ltd, based in Pakistan, is a renowned expo company known for precise match-making services. Leveraging abundant resources, it ensures exhibitors benefit beyond the exhibition, earning global recognition for professionalism and quality.
						</p>
					</div>
				</div>
				<div class="about-detail">
					<figure class="about-bottom-right-img figure-round-border">
						<img src="{{theme_asset('img/eventum-img37.jpg')}}" alt="">
					</figure>
					<div class="about-detail-inner">
						<div class="about-list">
							<ul>
								<li>
									<i aria-hidden="true" class="icon icon-checkmark-circle"></i>
									<span>
									Everest provides accurate match-making services for exhibitors, ensuring a comprehensive and beneficial experience for each participant.
									</span>
								</li>
								<li>
									<i aria-hidden="true" class="icon icon-checkmark-circle"></i>
									<span>
									The company leverages the abundant resources in Pakistan, offering exhibitors services that go beyond the exhibition itself.
									</span>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<div class="home-about-place">
			<div class="place-content">
				<div class="place-icon">
					<a href="event-detail.html">
						<i aria-hidden="true" class="fas fa-map-marker-alt"></i>
					</a>
				</div>
				<div class="place-detail">
					<h5 class="place-title">WHERE IS THE EVENT :</h5>
					<span class="place-discription">
						{{config('Home.eventLocation')}}
					</span>
				</div>
			</div>
			<div class="place-content place-time">
				<div class="place-icon">
					<a href="event-detail.html">
						<i aria-hidden="true" class="far fa-calendar-alt"></i>
					</a>
				</div>
				<div class="place-detail">
					<h5 class="place-title">WHEN IS THE EVENT :</h5>
					<span class="place-discription">
						<?php
						$eventStartDate = new DateTime(config('Home.eventStart'));
						$eventEndDate = new DateTime(config('Home.eventEnd'));
						
						// Format the dates
						$formattedStartDate = $eventStartDate->format('l'); // Day of the week (Sunday)
						$formattedEndDate = $eventEndDate->format('l');     // Day of the week (Wednesday)
						
						// Format the date range
						$dateRange = $eventStartDate->format('j F Y') . ' to ' . $eventEndDate->format('j F Y');
						
						// Combine the formatted dates and date range
						$result = " ($formattedStartDate to $formattedEndDate)  $dateRange";
						?>
						{{$result}}
					</span>
				</div>
			</div>
		</div>
	</div>
</section>