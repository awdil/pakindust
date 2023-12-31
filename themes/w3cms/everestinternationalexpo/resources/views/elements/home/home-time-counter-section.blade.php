
<!-- home time counter section -->
<?php 
	$datetime = date('Y-m-d H:i:s', strtotime(config('Home.eventStart')));
?>
<div class="home-count-timmer">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 offset-lg-6">
				<div class="time-counter-wrap">
					<div class="time-counter" data-date="{{$datetime}}">
						<!-- Date Formate Input yyyy-mm-dd hh:mm:ss -->
						<div class="counter-time">
							<span class="counter-days"></span>
							<span class="label-text">Days</span>
						</div>
						<div class="counter-time">
							<span class="counter-hours"></span>
							<span class="label-text">Hours</span>
						</div>
						<div class="counter-time">
							<span class="counter-minutes"></span>
							<span class="label-text">Minutes</span>
						</div>
						<div class="counter-time">
							<span class="counter-seconds"></span>
							<span class="label-text">Seconds</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>