<?php

return [
	'name'          => 'Exhibition',
	'slug'          => 'exhibition',
	'route_prefix'  => 'exhibitions',
	'ScreenOption'	=> array(
		'Categories'	=> array('visibility' => true),
		'FeaturedImage'	=> array('visibility' => true),
		'Video'			=> array('visibility' => false),
		'Excerpt'		=> array('visibility' => true),
		'CustomFields'	=> array('visibility' => true),
		'Discussion'	=> array('visibility' => false),
		'Slug'			=> array('visibility' => true),
		'Author'		=> array('visibility' => true),
		'Seo'			=> array('visibility' => true),
		'Tags'			=> array('visibility' => true),
	),
	'status' => array(
					'1' => 'Published', 
					'2' => 'Draft', 
					'3' => 'Trash', 
					'4' => 'Private', 
					'5' => 'Pending'
				),
];
