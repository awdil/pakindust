<?php 
$eventstartdate = config('Home.eventStart');
$eventstartenddate = config('Home.eventEnd'); 

// Check if config values are available
if (!$eventstartdate || !$eventstartenddate) {
    // Use dummy dates as placeholders
    $eventstartdate = '2024-02-23';
    $eventstartenddate = '2024-02-25';
}

// Convert string dates to DateTime objects
$startDate = new DateTime($eventstartdate);
$endDate = new DateTime($eventstartenddate);

// Generate date range between start and end dates
$dateRange = new DatePeriod($startDate, new DateInterval('P1D'), $endDate);

?>
<section class="home-schedule-section">
    <div class="container">
        <div class="row align-items-start">
            <div class="col-lg-6">
                <div class="section-head">

                    {!! config('Home.scheduleSection') !!}
                    <!-- <span class="section-sub-title ">SCHEDULE DETAILS</span>
                    <h3 class="section-title">
                        INFORMATION OF EVENT SCHEDULE !
                    </h3>
                    <p class="section-paragraph">
                    Discover the detailed schedule for our upcoming events. Immerse yourself in a carefully curated agenda filled with engaging activities, informative sessions, and valuable networking opportunities. Whether you're interested in in-person networking, boosting creativity, or attending after-party events, our schedule has something for everyone.
                    Join us on the following dates to make the most out of your event experience
                    </p> -->
                </div>
            </div>
            <div class="col-lg-6">
                <div class="time-circle-wrapper">
                    <!-- <div class="time-info">
                        <div class="time-txt">
                            <h5>23RD FEB</h5>
                            <h6>SUNDAY</h6>
                        </div>
                    </div>
                    <div class="time-info">
                        <div class="time-txt">
                            <h5>24TH FEB</h5>
                            <h6>MONDAY</h6>
                        </div>
                    </div>
                    <div class="time-info">
                        <div class="time-txt">
                            <h5>25TH FEB</h5>
                            <h6>TUESDAY</h6>
                        </div>
                    </div> -->
                    <?php $count = 0; ?>
                    <?php foreach ($dateRange as $date): ?>
                        <?php //$chracterlength = ob_get_length($date->format('l'));?>
                        <div class="time-info">
                            <div class="time-txt">
                                <h5><?php echo $date->format('jS M'); ?></h5>
                                @if($count ==0)
                                    <h6><?php echo $date->format('l'); ?></h6>
                                @else
                                <!-- needs to print the equal space for the next items -->
                                    <h6><?php echo $date->format('l'); ?></h6>
                                @endif
                            </div>
                        </div>
                        <?php $count++; ?>
                        <?php if ($count === 3) break; ?>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
        <div class="routine-content">
            <!-- In the pages i need to add flage if this page belongs to routine then we will show the relvent data for tlast 4 rotutine of each event -->
            <div class="routine-detail">
                <div class="time-detail">
                    <span class="time-title">10:00 AM to 11:30 AM</span>
                    <h6 class="subject-title">Exhibition Inauguration</h6>
                </div>
                <div class="routine-description">
                    <h5 class="chapter-title">Grand Opening Ceremony</h5>
                    <p class="ch-paragraph">
                        Join us for the grand inauguration of Pakindustrial Expo. Explore a diverse range of industrial products and services showcased by leading companies. This ceremony marks the beginning of an exciting exhibition experience.
                    </p>
                    <span class="chapter-link">
                        <a href="#">EXPLORE EXHIBITORS</a>
                    </span>
                </div>
                <div class="lecture-image">
                    <figure class="">
                        <img src="{{theme_asset('img/expo-opening.jpg')}}" alt="Exhibition Inauguration">
                    </figure>
                </div>
            </div>
            <div class="routine-detail">
                <div class="time-detail">
                    <span class="time-title">12:00 PM to 01:30 PM</span>
                    <h6 class="subject-title">Industry Trends Seminar</h6>
                </div>
                <div class="routine-description">
                    <h5 class="chapter-title">Navigating Future Challenges</h5>
                    <p class="ch-paragraph">
                        Dive into an insightful seminar on current industry trends and future challenges. Industry experts will share their perspectives on navigating the dynamic landscape of industrial development.
                    </p>
                    <span class="chapter-link">
                        <a href="#">VIEW SEMINAR DETAILS</a>
                    </span>
                </div>
                <div class="lecture-image">
                    <figure class="">
                        <img src="{{theme_asset('img/industry-seminar.jpg')}}" alt="Industry Trends Seminar">
                    </figure>
                </div>
            </div>
            <div class="routine-detail">
                <div class="time-detail">
                    <span class="time-title">02:00 PM to 03:30 PM</span>
                    <h6 class="subject-title">Networking Session</h6>
                </div>
                <div class="routine-description">
                    <h5 class="chapter-title">Connect with Industry Leaders</h5>
                    <p class="ch-paragraph">
                        Engage in a networking session with key industry leaders and potential business partners. Build valuable connections and explore collaborative opportunities within the industrial sector.
                    </p>
                    <span class="chapter-link">
                        <a href="#">NETWORKING OPPORTUNITIES</a>
                    </span>
                </div>
                <div class="lecture-image">
                    <figure class="">
                        <img src="{{theme_asset('img/networking-session.jpg')}}" alt="Networking Session">
                    </figure>
                </div>
            </div>
            <div class="routine-detail">
                <div class="time-detail">
                    <span class="time-title">04:00 PM to 05:30 PM</span>
                    <h6 class="subject-title">Product Showcase</h6>
                </div>
                <div class="routine-description">
                    <h5 class="chapter-title">Innovative Industrial Solutions</h5>
                    <p class="ch-paragraph">
                        Witness a diverse array of industrial products and solutions in our exclusive product showcase. Explore innovations that are shaping the future of the industrial landscape.
                    </p>
                    <span class="chapter-link">
                        <a href="#">EXPLORE PRODUCTS</a>
                    </span>
                </div>
                <div class="lecture-image">
                    <figure class="">
                        <img src="{{theme_asset('img/product-showcase.jpg')}}" alt="Product Showcase">
                    </figure>
                </div>
            </div>
        </div>

        <div class="schedule-btn">
            <a href="#" class="button-round-primary">VIEW MORE DETAILS</a>
        </div>
    </div>
</section>