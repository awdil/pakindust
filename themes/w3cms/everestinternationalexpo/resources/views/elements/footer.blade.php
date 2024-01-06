<footer id="colophon" class="site-footer">
    <div class="footer-overlay overlay"></div>
    <div class="top-footer">
        <div class="container">
            <div class="row align-items-lg-center align-items-start">
                <div class="col-lg-3 col-sm-6">
                    <aside class="widget widget_text img-textwidget">
                        <div class="footer-logo">
                            <a href="{{ url('/') }}"><img src="{{ asset('images/logo-full-white.png') }}" alt="{{ __('Footer Logo') }}"></a>
                        </div>
                        <div class="textwidget widget-text">
                        {!! config('Site.biography') !!}
                        </div>
                    </aside>
                    <div class="footer-social-links">
                        <ul>
                            <li>
                                <a href="https://www.facebook.com/" target="_blank">
                                    <i class="fab fa-facebook-f" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.twitter.com/" target="_blank">
                                    <i class="fab fa-twitter" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <i class="fab fa-instagram" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/" target="_blank">
                                    <i class="fab fa-youtube" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <aside class="widget">
                        <h6 class="widget-title">Quick LInks</h6>
                        <ul>
                            <li>
                                <a href="about.html">About us</a>
                            </li>
                            <li>
                                <a href="event-detail.html">Event Details</a>
                            </li>
                            <li>
                                <a href="blog-archive.html">News & Articles</a>
                            </li>
                            <li>
                                <a href="single-page.html">Credits</a>
                            </li>
                            <li>
                                <a href="legal-notice.html">Legal Notice</a>
                            </li>
                        </ul>
                    </aside>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <aside class="widget">
                        <h6 class="widget-title">OTHER PAGES</h6>
                        <ul>
                            <li>
                                <a href="faq.html">Help Center</a>
                            </li>
                            <li>
                                <a href="contact.html">Contact Us</a>
                            </li>
                            <li>
                                <a href="faq.html">FAQ</a>
                            </li>
                            <li>
                                <a href="legal-notice.html">Parent Community</a>
                            </li>
                            <li>
                                <a href="single-page.html">Organiser</a>
                            </li>
                        </ul>
                    </aside>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <aside class="widget widget_text footer-join-us text-center">
                        <h6 class="widget-title">JOIN OUR NEWSLETTER</h6>
                        <p class="textwidget">
                            Subscribe our newsletter to get latest news and update from us.
                        </p>
                        <form class="footer-form">
                            <input type="email" name="email" placeholder="Your Email..">
                            <button class="button-round-primary">SUBSCRIBE NOW</button>
                        </form>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="bottom-footer">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-7">
                    <div class="legal-list">
                        <ul>
                            <li> <a class="acolor-white" href="legal-notice.html">PRIVACY POLICY</a></li>
                            <li> <a class="acolor-white" href="contact.html">SUPPORT</a></li>
                            <li> <a class="acolor-white" href="term-and-condition.html">TERMS & CONDITION</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-5">
                    <div class="copy-right acolor-white">{!! config('Site.copyright') !!}</div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- back to top -->
<a id="backTotop" href="#" class="to-top-icon">
    <i class="fas fa-chevron-up"></i>
</a>
<!-- custom search field html -->
<div class="header-search-form">
    <div class="container">
        <div class="header-search-container">
            <form class="search-form" role="search" method="get">
                <input type="text" name="s" placeholder="Enter your text...">
            </form>
            <a href="#" class="search-close">
                <i class="fas fa-times"></i>
            </a>
        </div>
    </div>
</div>