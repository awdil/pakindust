<!-- home progress section html start -->
<?php $progressContentData = unserialize(config('Home.progressContent')); ?>
<div class="home-progress-section">
	<div class="container">
		<div class="counter-up-inner">
			<div class="counter-item-wrap row">
			@forelse($progressContentData as $index => $data)
				<div class="col-lg-3 col-sm-6 col-6 counter-item">
					<div class="counter-no">
						<span class="counter">{{ $data['count'] }}</span>+
					</div>
					<div class="Completed">
					{{ $data['label'] }}
					</div>
				</div>
				@empty
                <p>No events available.</p>
            	@endforelse
			</div>
		</div>
	</div>
</div>