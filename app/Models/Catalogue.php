<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class Catalogue extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $table = 'catalogues';
    protected $fillable = [
        'user_id',
        'title',
        'slug',
        'content',
        'excerpt',
        'year',
        'comment',
        'password',
        'status',
        'visibility',
        'publish_on',
    ];

    
	public function registerMediaCollections(): void
    {
        $this->addMediaCollection('images');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function blog_seo()
    {
        return $this->hasOne(BlogSeo::class, 'blog_id', 'id');
    }

    public function blog_categories()
    {
        return $this->belongsToMany(BlogCategory::class, 'blog_blog_categories', 'blog_id', 'blog_category_id');
    }

    public function blog_tags()
    {
        return $this->belongsToMany(BlogTag::class, 'blog_blog_tags', 'blog_id', 'blog_tag_id');
    }

    
    public function featuredImage()
    {
        // Assuming you have a 'featured_image' column in your table
        $data = $this->belongsTo(Media::class, 'featured_id');
        return $data;
    }

    public function getFeaturedImageUrlAttribute( $value ) {
        $media = $this->getFirstMedia('images');

        if ($media) {
            return $media->getUrl();
        }
    }

    

    public function generateSlug($title, $replacement='-', $id=0)
    {  
        $slug = Str::slug($title, $replacement);
        $newSlug = $this->checkSlugIsValid($slug,$id);
        return $newSlug;
    }
        
        
    public function checkSlugIsValid($slug, $id=0)
    {
        $blog = Catalogue::where("slug", '=', $slug)->where("id", '!=', $id)->get();        
        
        if(!empty($blog))
        {
            $slug    =  $slug.'-1';
        }
        return $slug;
    }
}
