{{-- Extends layout --}}
@extends('admin.layout.default')

{{-- Content --}}
@section('content')

<div class="container-fluid">
	<div class="card accordion accordion-rounded-stylish accordion-bordered" id="accordion-slug">
		<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-slug" aria-expanded="true">
			<h4 class="card-title">{{ __('Screen Options') }}</h4>
			<span class="accordion-header-indicator"></span>
		</div>
		<div class="accordion__body p-4 collapse show" id="with-slug" data-bs-parent="#accordion-slug">
			<div class="row">
				@if(!empty($screenOption)) 
					@forelse($screenOption as $key => $value)
						<div class="col-md-2 form-group">
							<label class="checkbox-inline">
								<input type="checkbox" id="Allow{{ $key }}" class="me-1 m-0 form-check-input allowField Allow{{ $key }}" rel="{{ $key }}" {{ $value['visibility'] ? 'checked="checked"' : '' }}>
								{{ $key }}
							</label>
						</div>
					@empty
					@endforelse
				@endif
			</div>
		</div>
	</div>

	<div class="row page-titles mx-0 ">
		<div class="col-sm-6 p-0">
			<div class="welcome-text">
				<h4>{{ __('Catalogues') }}</h4>
				<span>{{ __('Add Catalogue') }}</span>
			</div>
		</div>
		<div class="col-sm-6 p-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="{{ route('blog.admin.index') }}">{{ __('Catalogues') }}</a></li>
				<li class="breadcrumb-item active"><a href="javascript:void(0)">{{ __('Add Catalogue') }}</a></li>
			</ol>
		</div>
	</div>

	<form action="{{ route('catalogues.admin.store') }}" method="post" enctype="multipart/form-data">
		@csrf
		<div class="row">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">{{ __('Add Catalogue') }}</h4>
							</div>
							<div class="card-body p-4">
								<div class="row">
									<div class="form-group col-md-12">
										<label for="catalogueTitle">{{ __('Title') }}</label>
										<input type="text" name="data[Catalogue][title]" class="form-control" id="catalogueTitle" placeholder="{{ __('Title') }}" value="{{ old('data.Catalogue.title') }}">
										@error('data.Catalogue.title')
											<p class="text-danger">
												{{ $message }}
											</p>
										@enderror
									</div>
									<div class="form-group col-md-12 ">
											<textarea name="data[Catalogue][content]" class="form-control W3cmsCkeditor h-auto" id="ExhibitionContent" rows="10">{{ old('data.Catalogue.content') }}</textarea>
											@error('data.Catalogue.content')
												<p class="text-danger">
													{{ $message }}
												</p>
											@enderror
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XExcerpt {{ $screenOption['Excerpt']['visibility'] ? '' : 'd-none' }}" id="accordion-excerpt">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-excerpt" aria-expanded="true">
								<h4 class="card-title">{{ __('Excerpt') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-excerpt" data-bs-parent="#accordion-excerpt">
								<div class="form-group">
									<label for="ContentExcerpt">{{ __('Excerpt') }}</label>
									<textarea name="data[Catalogue][excerpt]" class="form-control" id="ContentExcerpt" rows="5">{{ old('data.Catalogue.excerpt') }}</textarea>
									<small>{{ __('Excerpts are optional hand-crafted summaries of your content that can be used in your theme.') }}</small>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XCustomFields {{ $screenOption['CustomFields']['visibility'] ? '' : 'd-none' }}" id="accordion-custom-fields">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-custom-fields" aria-expanded="true">
								<h4 class="card-title">{{ __('Custom Fields') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-custom-fields" data-bs-parent="#accordion-custom-fields">
								<div id="AppendContainer">
									@php
										$count = 1;
										$custom_fields = old('data.CatalogueMeta');
									@endphp
									@if(!empty($custom_fields))
										<div id="customFieldContainer">
											@foreach($custom_fields as $custom_field)
												@if($custom_field['title'] == 'ximage' || $custom_field['title'] == 'xvideo')
													@continue
												@endif
												@php
													$count++;
												@endphp
												<div class="row xrow">
													<div class="col-md-6 form-group">
														<label for="CatalogueMetaName_{{ $count }}">{{ __('Title') }}</label> 
														<input type="text" name="data[CatalogueMeta][{{ $count }}][title]" class="form-control" id="CatalogueMetaName_{{ $count }}" value="{{ $custom_field['title'] }}"> 
													</div> 
													<div class="col-md-6 form-group"> 
														<label for="CatalogueMetaValue_{{ $count }}">{{ __('Value') }}</label> 
														<textarea name="data[CatalogueMeta][{{ $count }}][value]" id="CatalogueMetaValue_{{ $count }}" class="form-control" rows="5">{{ isset($custom_field['value']) ? $custom_field['value'] : '' }}</textarea> 
													</div> 
													<div class="col-md-12 form-group"> 
														<button class="btn btn-danger CustomFieldRemoveButton" type="button">{{ __('Delete') }}</button>
													</div>
												</div>
											@endforeach
										</div>
									@endif
									<input type="hidden" id="last_cf_num" value="{{ $count }}">
								</div>
								<div class="row">
									<div class="form-group col-md-6">
										<label for="CatalogueMetaName">{{ __('Title') }}</label>
										<input type="text" class="form-control" id="CatalogueMetaName" placeholder="{{ __('Title') }}">
									</div>
									<div class="form-group col-md-6">
										<label for="CatalogueMetaValue">{{ __('Value') }}</label>
										<textarea class="form-control" id="CatalogueMetaValue" rows="5"></textarea>
									</div>
								</div>
								{{-- <div class="border-top mt-1 mb-1"></div> --}}
								<button type="button" class="btn btn-primary btn-sm" id="AddCustomField">{{ __('Add Custom Field') }}</button>
								<small class="d-block mt-2">{{ __('Custom fields can be used to extra metadata to a post that you can use in your theme.') }}</small>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XDiscussion {{ $screenOption['Discussion']['visibility'] ? '' : 'd-none' }}" id="accordion-discussion">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-discussion" aria-expanded="true">
								<h4 class="card-title">{{ __('Discussion') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-discussion" data-bs-parent="#accordion-discussion">
								<div class="form-check mb-2">
									<input type="hidden" name="data[Catalogue][comment]" id="ContentComment_" value="0">
									<input type="checkbox" name="data[Catalogue][comment]" class="form-check-input" id="ContentComment" value="1" {{ old('data.Catalogue.comment') == 1 ? 'checked="checked"' : '' }}>
									<label class="form-check-label" for="ContentComment">{{ __('Allow comments.') }}</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XSlug {{ $screenOption['Slug']['visibility'] ? '' : 'd-none' }}" id="accordion-slug">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-slug" aria-expanded="true">
								<h4 class="card-title">{{ __('Slug') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-slug" data-bs-parent="#accordion-slug">
								<div class="form-group col-md-12">
									<label for="slug">{{ __('Slug') }}</label>
									<input type="text" name="data[Catalogue][slug]" class="form-control slug" id="slug" value="{{ old('data.Catalogue.slug') }}">
								</div>			
								@error('data.Catalogue.slug')
									<p class="text-danger">
										{{ $message }}
									</p>
								@enderror
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XAuthor {{ $screenOption['Author']['visibility'] ? '' : 'd-none' }}" id="accordion-author">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-author" aria-expanded="true">
								<h4 class="card-title">{{ __('Author') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-author" data-bs-parent="#accordion-author">
								<div class="form-group">
									<label for="ContentUserId">{{ __('User') }}</label>
									<select name="data[Catalogue][user_id]" class="default-select form-control" id="ContentUserId">
										@forelse($users as $user)
											<option value="{{ $user->id }}" {{ old('data.Catalogue.user_id') == $user->id ? 'selected="selected"' : '' }}>{{ $user->full_name }}</option>
										@empty
										@endforelse
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XSeo {{ $screenOption['Seo']['visibility'] ? '' : 'd-none' }}" id="accordion-seo">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-seo" aria-expanded="true">
								<h4 class="card-title">{{ __('Seo') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-seo" data-bs-parent="#accordion-seo">
								<div class="row">
									<div class="col-md-12 form-group">
										<label for="ContentSeoExhibitionTitle">{{ __('Exhibition Title') }}</label>
										<input type="text" name="data[ExhibitionSeo][page_title]" class="form-control" id="ContentSeoExhibitionTitle" placeholder="{{ __('Exhibition Title') }}" maxlength="255" value="{{ old('data.ExhibitionSeo.page_title') }}">
									</div>
									<div class="form-group col-md-6">
										<label for="ContentSeoMetaKeywords">{{ __('Keywords') }}</label>
										<input type="text" name="data[ExhibitionSeo][meta_keywords]" class="form-control" id="ContentSeoMetaKeywords" placeholder="{{ __('Enter meta keywords') }}" maxlength="255" value="{{ old('data.ExhibitionSeo.meta_keywords') }}">
									</div>
									<div class="form-group col-md-6">
										<label for="ContentSeoMetaDescriptions">{{ __('Descriptions') }}</label>
										<textarea name="data[ExhibitionSeo][meta_descriptions]" class="form-control" id="ContentSeoMetaDescriptions" rows="5" placeholder="{{ __('Enter meta descriptions') }}">{{ old('data.ExhibitionSeo.meta_descriptions') }}</textarea>
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
										<select name="data[Catalogue][status]" id="Status" class="default-select form-control">
											<option value="1" {{ old('data.Catalogue.status') == 1 ? 'selected="selected"' : '' }}>{{ __('Published') }}</option>
											<option value="2" {{ old('data.Catalogue.status') == 2 ? 'selected="selected"' : '' }}>{{ __('Draft') }}</option>
											<option value="4" {{ old('data.Catalogue.status') == 4 ? 'selected="selected"' : '' }}>{{ __('Private') }}</option>
											<option value="5" {{ old('data.Catalogue.status') == 5 ? 'selected="selected"' : '' }}>{{ __('Pending') }}</option>
										</select>
									</div>
									<div class="col-md-12 form-group">
										<label for="ContentVisibility"><i class="fa fa-eye"></i> {{ __('Visibility:') }}</label>
										<select name="data[Catalogue][visibility]" id="ContentVisibility" class="default-select form-control">
											<option value="Pu" {{ old('data.Catalogue.visibility') == 'Pu' ? 'selected="selected"' : '' }}>{{ __('Public') }}</option>
											<option value="PP" {{ old('data.Catalogue.visibility') == 'PP' ? 'selected="selected"' : '' }}>{{ __('Password protected') }}</option>
											<option value="Pr" {{ old('data.Catalogue.visibility') == 'Pr' ? 'selected="selected"' : '' }}>{{ __('Private') }}</option>
										</select>
									</div>
									<div class="col-md-12 form-group {{ old('data.Catalogue.visibility') == 'PP' ? '' : 'd-none' }}" id="PublicPasswordTextbox">
										<label for="ContentPassword">{{ __('Password') }}</label>
										<input type="password" name="data[Catalogue][password]" class="form-control" id="ContentPassword" placeholder="{{ __('Enter Password') }}" value="{{ old('data.Catalogue.password') }}" autocomplete="New-Password">
									</div>
									<div class="col-md-12 form-group" id="PublicPasswordTextbox">
										<label for="PublishDateTimeTextbox"><i class="fa fa-calendar"></i> {{ __('Published on:') }}</label>
										<input type="text" name="data[Catalogue][publish_on]" class="datetimepicker form-control" id="PublishDateTimeTextbox" value="{{ old('data.Catalogue.publish_on', date('Y-m-d')) }}">
									</div>
									<div class="col-md-12 form-group">
										<label for=""><i class="fa fa-calendar"></i> {{ __('Year') }}</label>
										<select name="data[Catalogue][year]" id="year" class="default-select form-control">
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
						<div class="card accordion accordion-rounded-stylish accordion-bordered XCategories {{ $screenOption['Categories']['visibility'] ? '' : 'd-none' }}" id="accordion-categories">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-categories" aria-expanded="true">
								<h4 class="card-title">{{ __('Categories') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show appendCategory" id="with-categories" data-bs-parent="#accordion-categories">
								{!! $categoryArr !!}
								<a href="javascript:void(0)" title="{{ __('Click to add new category') }}" class="addNewExhibitionCategorylink text-primary d-block my-2"><i class="fa fa-plus"></i>{{ __('Add New Category') }}</a>
								<div class="col-md-12 form-group newCategoryDiv">
									<div class="form-group">
										<label for="ExhibitionCategoryExhibitionCategory">{{ __('New Category Name') }}</label>
                          				<input type="text" class="form-control newCategoryField mb-2" id="ExhibitionCategoryExhibitionCategory">
									</div>
									<div class="form-group">
										<label for="ParentExhibitionCategory">{{ __('Parent Category') }}</label>
										<select id="ParentExhibitionCategory" class="default-select form-control CategoryParentId">
											<option value="">{{ __('-Parent Category-') }}</option>
											@forelse($parentCategoryArr as $value)
												<option value="{{ $value['id'] }}">{!! $value['title'] !!}</option>
											@empty
											@endforelse
										</select>
									</div>
                          			<input type="hidden" class="form-control rdx-link" value="{{ route("blog_category.admin.admin_ajax_add_category") }}">
                         			<button type="button" class="btn btn-primary addNewExhibitionCategoryBtn">{{ __('Add New') }}</button>
                         		</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XTags {{ $screenOption['Tags']['visibility'] ? '' : 'd-none' }}" id="accordion-tags">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-tags" aria-expanded="true">
								<h4 class="card-title">{{ __('Tags') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-tags" data-bs-parent="#accordion-tags">
								<input type="text" name="data[ExhibitionTag]" data-role="tagsinput" class="form-control bootstrap-tagsinput" placeholder="{{ __('type tags here') }}" id="ExhibitionExhibitionTag" value="{{ old('data.ExhibitionTag') }}">
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XFeaturedImage {{ $screenOption['FeaturedImage']['visibility'] ? '' : 'd-none' }}" id="accordion-feature-image">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-feature-image" aria-expanded="true">
								<h4 class="card-title">{{ __('Featured Image') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-feature-image" data-bs-parent="#accordion-feature-image">
								<div class="featured-img-preview img-parent-box"> 

									<img src="{{ asset('images/noimage.jpg') }}" class="avatar img-for-onchange"  alt="{{ __('Image') }}" width="100px" height="100px" title="{{ __('Image') }}"> 

									<input type="hidden" name="data[CatalogueMeta][0][title]" value="ximage" id="ContentMeta0Title">
									<div class="form-file">
										<input type="file" class="ps-2 form-control img-input-onchange" name="data[CatalogueMeta][0][value]" accept=".png, .jpg, .jpeg"  id="CatalogueMeta0Value">
									</div>
							   </div>
                                @error('data.CatalogueMeta.0.value')
                                    <p class="text-danger">
                                        {{ $message }}
                                    </p>
                                @enderror
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card accordion accordion-rounded-stylish accordion-bordered XVideo {{ $screenOption['Video']['visibility'] ? '' : 'd-none' }}" id="accordion-video">
							<div class="card-header justify-content-start accordion-header" data-bs-toggle="collapse" data-bs-target="#with-video" aria-expanded="true">
								<h4 class="card-title">{{ __('Video') }}</h4>
								<span class="accordion-header-indicator"></span>
							</div>
							<div class="accordion__body p-4 collapse show" id="with-video" data-bs-parent="#accordion-video">
								<input type="hidden" name="data[CatalogueMeta][1][title]" value="xvideo" id="CatalogueMeta1Title">
								<input type="text" name="data[CatalogueMeta][1][value]" class="form-control bootstrap-tagsinput" placeholder="{{ __('Youtube Video Link') }}" id="CatalogueMeta1Value" value="{{ old('data.CatalogueMeta.1.value') }}">
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

