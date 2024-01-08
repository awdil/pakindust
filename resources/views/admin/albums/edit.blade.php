{{-- Extends layout --}}
@extends('admin.layout.default')

{{-- Content --}}
@section('content')

<div class="container-fluid">
	

	<div class="row page-titles mx-0">
		<div class="col-sm-6 p-0">
			<div class="welcome-text">
				<h4>{{ __('Albums') }}</h4>
				<span>{{ __('Edit Album') }}</span>
			</div>
		</div>
		<div class="col-sm-6 p-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="{{ route('albums.admin.index') }}">{{ __('Albums') }}</a></li>
				<li class="breadcrumb-item active"><a href="javascript:void(0)">{{ __('Edit Albums') }}</a></li>
			</ol>
		</div>
	</div>

	<form action="{{ route('albums.admin.update', $album->id) }}" method="post" enctype="multipart/form-data">
		@csrf
		<div class="row">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">{{ __('Edit Album') }}</h4>
							</div>
							<div class="card-body p-4">
								<div class="row">
									<div class="form-group col-md-12">
										<label for="BlogTitle">{{ __('Title') }}</label>
										<input type="text" name="data[Album][title]" class="form-control" id="BlogTitle" placeholder="{{ __('Title') }}" value="{{ old('data.Album.title', $album->title) }}">
										@error('data.Album.title')
											<p class="text-danger">
												{{ $message }}
											</p>
										@enderror
									</div>

									<div class="container mx-auto flex justify-between m-2 p-2 bg-white shadow-md rounded-lg">
									<div class="m-2 p-2">
										<img src="{{ $image->getUrl() }}">
									</div>
									<div class="m-2 p-2">
										<ul>
											<li>Collection Name: {{ $image->collection_name }}</li>
											<li>Name: {{ $image->name }}</li>
											<li>Mime type: {{ $image->mime_type }}</li>
											<li>Size: {{ $image->human_readable_size }}</li>
										</ul>
									</div>
								</div>
								</div>
							</div>
						</div>
					</div>
					
					
					
				</div>
			</div>	
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered" id="accordion-publish">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-publish" aria-expanded="true">
								<h4 class="card-title">{{ __('publish') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-publish" data-bs-parent="#accordion-publish">
								<div class="row">
									<div class="col-md-12 form-group">
										<label for="Status"><i class="fa fa-key"></i> {{ __('Status:') }}</label>
										<select name="data[Album][status]" id="Status" class="default-select form-control">
											<option value="1" {{ old('data.Album.status', $album->status) == 1 ? 'selected="selected"' : '' }}>{{ __('Published') }}</option>
		                    				<option value="2" {{ old('data.Album.status', $album->status) == 2 ? 'selected="selected"' : '' }}>{{ __('Draft') }}</option>

		                    				@if($album->status == 3)
		                    					<option value="3" {{ old('data.Album.status', $album->status) == 3 ? 'selected="selected"' : '' }}>{{ __('Trash') }}</option>
		                    				@endif
		                    				<option value="4" {{ old('data.Album.status', $album->status) == 4 ? 'selected="selected"' : '' }}>{{ __('Private') }}</option>
		                    				<option value="5" {{ old('data.Album.status', $album->status) == 5 ? 'selected="selected"' : '' }}>{{ __('Pending') }}</option>
										</select>
									</div>
									<div class="col-md-12 form-group">
										<label for="ContentVisibility"><i class="fa fa-eye"></i> {{ __('Visibility:') }}</label>
										<select name="data[Album][visibility]" id="ContentVisibility" class="default-select form-control">
											<option value="Pu" {{ old('data.Album.visibility', $album->visibility) == 'Pu' ? 'selected="selected"' : '' }}>{{ __('Public') }}</option>
		                    				<option value="PP" {{ old('data.Album.visibility', $album->visibility) == 'PP' ? 'selected="selected"' : '' }}>{{ __('Password protected') }}</option>
		                    				<option value="Pr" {{ old('data.Album.visibility', $album->visibility) == 'Pr' ? 'selected="selected"' : '' }}>{{ __('Private') }}</option>
										</select>
									</div>
									<div class="col-md-12 form-group {{ old('visibility', $album->visibility) == 'PP' ? '' : 'd-none' }}" id="PublicPasswordTextbox">
										<label for="ContentPassword">{{ __('Password') }}</label>
										<input type="password" name="data[Album][password]" class="form-control" id="ContentPassword" placeholder="{{ __('Enter Password') }}" value="{{ old('data.Album.password', $album->password)}}" autocomplete="New-Password">
									</div>
									<div class="col-md-12 form-group" id="PublicPasswordTextbox">
										<label for="PublishDateTimeTextbox"><i class="fa fa-calendar"></i> {{ __('Published on:') }}</label>
										<input type="text" name="data[Album][publish_on]" class="datetimepicker form-control" id="PublishDateTimeTextbox" value="{{ $album->publish_on ? old('data.Album.publish_on', $album->publish_on) : date('Y-m-d') }}">
									</div>
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary">{{ __('Update') }}</button>
										@if($album->status != 3)
			                    			<a href="{{ route('blog.admin.admin_trash_status', $album->id) }}" class="btn btn-danger">{{ __('Move to Trash') }}</a>
			                    		@endif
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-12">
						@php
							$ximageMeta = $album->feature_img;
                    		$ximage_url = isset($ximageMeta->value) ? asset('storage/blog-images/'.$ximageMeta->value) : asset('images/noimage.jpg');
								//dd($album);
							@endphp
							
						
						<div class="card accordion accordion-rounded-stylish accordion-bordered XFeaturedImage" id="accordion-feature-image">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-feature-image" aria-expanded="true">
								<h4 class="card-title">{{ __('Featured Image') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-feature-image" data-bs-parent="#accordion-feature-image">
								<div class="featured-img-preview img-parent-box">
									<div id="RemoveItemImg_{{ $album->id }}">
										<img src="{{ route('exhibition.exhibitionPublicImagePreview', ['id' =>  $album->id]) }}" class="avatar img-for-onchange"  alt="{{ __('Image') }}" title="{{ __('Image') }}"> 
									</div>
									<div class="d-flex align-items-center">
										@if(!empty($ximageMeta->value))
										<a href="javascript:void(0);" rdx-link="{{ route('blog.admin.remove_feature_image', $album->id) }}" class="rdxUpdateAjax btn btn-primary btn-xs rounded-0 me-2" rdx-delete-box="RemoveItemImg_{{ $album->id }}">{{ __('Remove') }}</a>
										@endif
										<div class="form-file">
											<input type="file" class="ps-2 form-control img-input-onchange" name="data[AlbumMeta][0][value]" accept=".png, .jpg, .jpeg"  id="AlbumMeta0Value" >
										</div>
									</div>
									<input type="hidden" name="data[AlbumMeta][0][title]" value="ximage" id="ContentMeta0Title">
									<input type="hidden" name="data[AlbumMeta][0][meta_id]" value="{{ isset($ximageMeta->id) ? $ximageMeta->id : 0 }}">
									<input type="hidden" name="data[AlbumMeta][0][old_value]" value="{{ isset($ximageMeta->value) ? $ximageMeta->value : '' }}">
							   	</div>
								@error('data.AlbumMeta.0.value')
								  <p class="text-danger">
								      {{ $message }}
								  </p>
								@enderror
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</form>
</div>

@push('inline-scripts')
	<script>
		'use strict';
		var screenOptionArray = '<?php echo json_encode($screenOption) ?>';
	</script>
@endpush

@endsection

