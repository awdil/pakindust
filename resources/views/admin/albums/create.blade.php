{{-- Extends layout --}}
@extends('admin.layout.default')

{{-- Content --}}
@section('content')

<div class="container-fluid">
	

	<div class="row page-titles mx-0 ">
		<div class="col-sm-6 p-0">
			<div class="welcome-text">
				<h4>{{ __('Albums') }}</h4>
				<span>{{ __('Add Album') }}</span>
			</div>
		</div>
		<div class="col-sm-6 p-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="{{ route('blog.admin.index') }}">{{ __('Albums') }}</a></li>
				<li class="breadcrumb-item active"><a href="javascript:void(0)">{{ __('Add Album') }}</a></li>
			</ol>
		</div>
	</div>

	<form action="{{ route('albums.admin.store') }}" method="post" enctype="multipart/form-data">
		@csrf
		<div class="row">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">{{ __('Add Album') }}</h4>
							</div>
							<div class="card-body p-4">
								<div class="row">
									<div class="form-group col-md-12">
										<label for="AlbumTitle">{{ __('Title') }}</label>
										<input type="text" name="data[Album][title]" class="form-control" id="AlbumTitle" placeholder="{{ __('Title') }}" value="{{ old('data.Album.title') }}">
										@error('data.Album.title')
											<p class="text-danger">
												{{ $message }}
											</p>
										@enderror
									</div>
									<div class="form-group col-md-12 ">
										<div class="form-file">
											<input type="file" class="ps-2 form-control img-input-onchange" name="image" accept=".png, .jpg, .jpeg"  id="image">
										</div>
											@error('data.Album.content')
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
											<option value="1" {{ old('data.Album.status') == 1 ? 'selected="selected"' : '' }}>{{ __('Published') }}</option>
											<option value="2" {{ old('data.Album.status') == 2 ? 'selected="selected"' : '' }}>{{ __('Draft') }}</option>
											<option value="4" {{ old('data.Album.status') == 4 ? 'selected="selected"' : '' }}>{{ __('Private') }}</option>
											<option value="5" {{ old('data.Album.status') == 5 ? 'selected="selected"' : '' }}>{{ __('Pending') }}</option>
										</select>
									</div>
									<div class="col-md-12 form-group">
										<label for="ContentVisibility"><i class="fa fa-eye"></i> {{ __('Visibility:') }}</label>
										<select name="data[Album][visibility]" id="ContentVisibility" class="default-select form-control">
											<option value="Pu" {{ old('data.Album.visibility') == 'Pu' ? 'selected="selected"' : '' }}>{{ __('Public') }}</option>
											<option value="PP" {{ old('data.Album.visibility') == 'PP' ? 'selected="selected"' : '' }}>{{ __('Password protected') }}</option>
											<option value="Pr" {{ old('data.Album.visibility') == 'Pr' ? 'selected="selected"' : '' }}>{{ __('Private') }}</option>
										</select>
									</div>
									<div class="col-md-12 form-group {{ old('data.Album.visibility') == 'PP' ? '' : 'd-none' }}" id="PublicPasswordTextbox">
										<label for="ContentPassword">{{ __('Password') }}</label>
										<input type="password" name="data[Album][password]" class="form-control" id="ContentPassword" placeholder="{{ __('Enter Password') }}" value="{{ old('data.Album.password') }}" autocomplete="New-Password">
									</div>
									<div class="col-md-12 form-group" id="PublicPasswordTextbox">
										<label for="PublishDateTimeTextbox"><i class="fa fa-calendar"></i> {{ __('Published on:') }}</label>
										<input type="text" name="data[Album][publish_on]" class="datetimepicker form-control" id="PublishDateTimeTextbox" value="{{ old('data.Album.publish_on', date('Y-m-d')) }}">
									</div>
									<div class="col-md-12 form-group">
										<label for=""><i class="fa fa-calendar"></i> {{ __('Year') }}</label>
										<select name="data[Album][year]" id="year" class="default-select form-control">
											@foreach(DzHelper::getYearsList() as $year)
											<option value="{{ $year }}" {{ old('year') == $year ? 'selected="selected"' : '' }}>{{ $year }}</option>
											@endforeach
										</select>
									</div>
									
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary">{{ __('Publish') }}</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XFeaturedImage" id="accordion-feature-image">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-feature-image" aria-expanded="true">
								<h4 class="card-title">{{ __('Featured Image') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-feature-image" data-bs-parent="#accordion-feature-image">
								<div class="featured-img-preview img-parent-box"> 

									<img src="{{ asset('images/noimage.jpg') }}" class="avatar img-for-onchange"  alt="{{ __('Image') }}" width="100px" height="100px" title="{{ __('Image') }}"> 

									<input type="hidden" name="data[AlbumMeta][0][title]" value="ximage" id="ContentMeta0Title">
									<div class="form-file">
										<input type="file" class="ps-2 form-control img-input-onchange" name="data[AlbumMeta][0][value]" accept=".png, .jpg, .jpeg"  id="AlbumMeta0Value">
									</div>
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
	<script>
        ClassicEditor
            .create( document.querySelector( 'textarea[name="editor"]' ), {
                ckfinder: {
                    uploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images&responseType=json',
                },
            } )
            .catch( error => {
                console.error( error );
            } );
    </script>
@endpush

@endsection

