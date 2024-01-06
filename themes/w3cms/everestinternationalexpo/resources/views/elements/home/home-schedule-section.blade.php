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
            <?php  
                $data1 = DzHelper::getConfigDataByName('Home.firstroutineDetail');
                $url1= route('configuration.publicImagePreview', ['id' => $data1->id]);
                $data2 = DzHelper::getConfigDataByName('Home.secondroutineDetail');
                $url2= route('configuration.publicImagePreview', ['id' => $data2->id]);
                $data3 = DzHelper::getConfigDataByName('Home.thirdroutineDetail');
                $url3= route('configuration.publicImagePreview', ['id' => $data3->id]);
                $data4 = DzHelper::getConfigDataByName('Home.fourthroutineDetail');
                $url4= route('configuration.publicImagePreview', ['id' => $data4->id]);
               
                $routineData1 = unserialize($data1->params);
                $routineData2 = unserialize($data2->params);
                $routineData3 = unserialize($data3->params);
                $routineData4 = unserialize($data4->params);

            ?>
            
            <div class="routine-detail">
                
                
                <div class="time-detail">
                    <span class="time-title">{{ $routineData1['time'] }}</span>
                    <h6 class="subject-title">{{ $routineData1['subjectTitle'] }}</h6>
                </div>
                <div class="routine-description">
                    <h5 class="chapter-title">{{ $routineData1['chapterTitle'] }}</h5>
                    <p class="ch-paragraph">
                    {{ $routineData1['paragraph'] }}
                    </p>
                    <span class="chapter-link">
                        <a href="#">EXPLORE EXHIBITORS</a>
                    </span>
                </div>
                
                <div class="lecture-image">
                    <figure class="">
                        <img src="{{ asset($url1) }}" alt="Exhibition Inauguration">
                    </figure>
                </div>
            </div>
            <div class="routine-detail">
                <div class="time-detail">
                    <span class="time-title">{{ $routineData2['time'] }}</span>
                    <h6 class="subject-title">{{ $routineData2['subjectTitle'] }}</h6>
                </div>
                <div class="routine-description">
                    <h5 class="chapter-title">{{ $routineData2['chapterTitle'] }}</h5>
                    <p class="ch-paragraph">
                    {{ $routineData2['paragraph'] }}
                    </p>
                    <span class="chapter-link">
                        <a href="#">VIEW SEMINAR DETAILS</a>
                    </span>
                </div>
                <div class="lecture-image">
                    <figure class="">
                        <img src="{{ asset($url2) }}" alt="Industry Trends Seminar">
                    </figure>
                </div>
            </div>
            <div class="routine-detail">
                <div class="time-detail">
                    <span class="time-title">{{ $routineData3['time'] }}</span>
                    <h6 class="subject-title">{{ $routineData3['subjectTitle'] }}</h6>
                </div>
                <div class="routine-description">
                    <h5 class="chapter-title">{{ $routineData3['chapterTitle'] }}</h5>
                    <p class="ch-paragraph">
                    {{ $routineData3['paragraph'] }}
                    </p>
                    <span class="chapter-link">
                        <a href="#">NETWORKING OPPORTUNITIES</a>
                    </span>
                </div>
                <div class="lecture-image">
                    <figure class="">
                        <img src="{{ asset($url3) }}" alt="Networking Session">
                    </figure>
                </div>
            </div>
            <div class="routine-detail">
                <div class="time-detail">
                    <span class="time-title">{{ $routineData4['time'] }}</span>
                    <h6 class="subject-title">{{ $routineData4['subjectTitle'] }}</h6>
                </div>
                <div class="routine-description">
                    <h5 class="chapter-title">{{ $routineData4['chapterTitle'] }}</h5>
                    <p class="ch-paragraph">
                    {{ $routineData4['paragraph'] }}
                    </p>
                    <span class="chapter-link">
                        <a href="#">EXPLORE PRODUCTS</a>
                    </span>
                </div>
                <div class="lecture-image">
                    <figure class="">
                        <img src="{{ asset($url4) }}" alt="Product Showcase">
                    </figure>
                </div>
            </div>
        </div>

        <div class="schedule-btn">
            <a href="#" class="button-round-primary">VIEW MORE DETAILS</a>
        </div>
    </div>
</section>