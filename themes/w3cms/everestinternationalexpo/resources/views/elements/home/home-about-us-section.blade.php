
<!-- home about us section -->
<?php
$data=DzHelper::getConfigDataByName('Home.aboutRightContent');
$unserializeData=unserialize($data->params);
// dd($unserializeData);
?>
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
						<span class="section-sub-title ">{{config('Home.aboutRightContent')}}</span>
						<h3 class="section-title">
						{{$unserializeData['sectionTitle']}}
						</h3>
						<p class="section-paragraph">
						{{$unserializeData['sectionParagraph']}}
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
									{{$unserializeData['aboutFirstlist']}}
									</span>
								</li>
								<li>
									<i aria-hidden="true" class="icon icon-checkmark-circle"></i>
									<span>
									{{$unserializeData['aboutSecondtlist']}}
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