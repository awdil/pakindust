<!-- home event section html start -->
<?php $eventServicesData = unserialize(config('Home.eventServices')); ?>
<section class="home-event-section">
    <div class="overlay"></div>
    <div class="container">
        <div class="section-head-white text-center col-lg-8 offset-lg-2">
            <h4 class="section-title">JOIN OUR EVENT</h4>
            <h3 class="section-title">
                {{ config('Home.eventHeading') }}
            </h3>
            <p class="section-paragraph">
            {{ config('Home.eventDescription') }}
            </p>
        </div>
        <div class="type-of-event-wrap">
            @forelse($eventServicesData as $index => $event)
            <div class="event-type">
                <div class="event-icon-content">
                    <span class="event-icon">
                        <a href="event-detail.html">
                            <i aria-hidden="true" class="icon {{ $event['icon'] }}"></i>
                        </a>
                    </span>
                    <h2 class="event-num">
                    {{ sprintf('%02d', $index) }}
                    </h2>
                </div>
                <div class="event-detail">
                    <h5 class="event-title">
                        <a href="event-detail.html">
                        {{ $event['heading'] }}
                        </a>
                    </h5>
                    <p>{{ $event['description'] }}</p>
                </div>
            </div>
            @empty
                <p>No events available.</p>
            @endforelse
        </div>
    </div>
</section>