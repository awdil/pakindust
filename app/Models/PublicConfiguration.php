<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;

class PublicConfiguration extends Model implements HasMedia
{
	use HasFactory, InteractsWithMedia;

	protected $table = 'configurations';
	public $timestamps = false;
	protected $fillable = [
		'name',       
		'value',
		'title',
		'input_type',
		'description',
		'params',
		'editable',
		'order',
		'weight'
	];

	public function registerMediaCollections(): void
    {
        $this->addMediaCollection('images');
    }


}
