
@if (!empty(config('Widget.show_sidebar')))
    {{-- Widget-Search --}}
    {{ DzHelper::SearchWidget(); }}
    {{-- Widget-Search --}}

    {{-- recent-blogs --}}
    {{-- {{ DzHelper::recentBlogs(); }} --}}
    {{ DzHelper::recentBlogs( array('limit'=>3, 'order'=>'asc', 'orderby'=>'created_at') ); }}
    {{-- recent-blogs --}}

    {{-- recent-categories --}}
    {{ DzHelper::categoryBlogs( array('limit'=>4, 'order'=>'asc', 'orderby'=>'title')); }}
    {{-- recent-categories --}}
    
    {{-- recent-archives --}}
    {{ DzHelper::archiveBlogs(); }}
    {{-- recent-archives --}}

    {{-- BlogTags --}}
    {{ DzHelper::BlogTags(); }}
    {{-- BlogTags --}}

    <aside class="widget widget_video">
        <div class="text-center">
            <h6 class="widget-title-divider-center-bottom">EVENT PROMO</h6>
        </div>
        <div class="video-wrapper">
            <iframe width="339" height="191" src="https://www.youtube.com/embed/XHOmBV4js_E"></iframe>
        </div>
    </aside>
    <aside class="widget widget_social">
        <div class="text-center">
            <h6 class="widget-title-divider-center-bottom">Follow Us On</h6>
        </div>
        <div class="social-icon-wrap">
            <div class="social-icon ">
                <a href="https://www.facebook.com/">
                    <i class="fab fa-facebook"></i>
                    <span>Facebook</span>
                </a>
            </div>
            <div class="social-icon social-pinterest">
                <a href="https://www.pinterest.com/">
                    <i class="fab fa-pinterest"></i>
                    <span>Pinterest</span>
                </a>
            </div>
            <div class="social-icon social-whatsapp">
                <a href="https://www.whatsapp.com/">
                    <i class="fab fa-whatsapp"></i>
                    <span>WhatsApp</span>
                </a>
            </div>
            <div class="social-icon social-linkedin">
                <a href="https://www.linkedin.com/">
                    <i class="fab fa-linkedin"></i>
                    <span>Linkedin</span>
                </a>
            </div>
            <div class="social-icon social-twitter">
                <a href="https://www.twitter.com/">
                    <i class="fab fa-twitter"></i>
                    <span>Twitter</span>
                </a>
            </div>
            <div class="social-icon social-google">
                <a href="https://www.google.com/">
                    <i class="fab fa-google-plus-g"></i>
                    <span>Google</span>
                </a>
            </div>
        </div>
    </aside>
@endif

