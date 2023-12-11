<aside class="widget search-widget">
    <form class="search-form" action="{{ route('permalink.search') }}" role="search" method="get">
        <input type="text" name="search" placeholder="{{ __('Search..') }}">
        <button class="search-btn">
            <i class="fas fa-search"></i>
        </button>
    </form>
</aside>