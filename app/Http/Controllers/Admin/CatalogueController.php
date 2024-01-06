<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\Models\Exhibition;
use Illuminate\Http\Request;
use App\Helper\DzHelper;
use App\Models\Catalogue;

use App\Models\Product;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\BlogBlogCategory;
use App\Models\BlogTag;
use App\Models\BlogBlogTag;
use App\Models\BlogMeta;
use App\Models\BlogSeo;
use App\Models\User;
use App\Rules\EditorEmptyCheckRule;
use Storage;

class CatalogueController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function admin_index(Request $request)
    {
        $page_title = __('All Catalogues');
        $resultQuery = Catalogue::query();
        $users = User::get();
       
        if($request->isMethod('get') && $request->input('todo') == 'Filter')
        {
            if($request->filled('title')) {
                $resultQuery->where('title', 'like', "%{$request->input('title')}%");
            }
            if($request->filled('status')) {
                $resultQuery->where('status', '=', $request->input('status'));
            }
            if($request->filled('from') && $request->filled('to')) {
                $resultQuery->whereBetween('catalogues.created_at', [$request->input('from'), $request->input('to')]);
            }
            if($request->filled('publish_on')) {
                $resultQuery->whereDate('publish_on', '=', $request->input('publish_on'));
            }
            if($request->filled('user')) {
                $resultQuery->where('user_id', '=', $request->input('user'));
            }
            if($request->filled('visibility')) {
                $resultQuery->where('visibility', '=', $request->input('visibility'));
            }
            if($request->filled('category')) {
                $resultQuery->whereHas('blog_categories',function($query) use($request){
                    $query->where('blog_categories.id', '=', $request->input('category'));
                });
            }
            if($request->filled('tag')) {
                $resultQuery->whereHas('blog_tags',function($query) use($request){
                    $query->where('blog_tags.id', '=', $request->input('tag'));
                });
            }
        }
        $resultQuery->join('users', 'catalogues.user_id', '=', 'users.id');
        $resultQuery->select('catalogues.*','users.name as user_name');
        $resultQuery->where('status', '!=', 3);

        $sortBy = $request->get('sort') ? $request->get('sort') : 'created_at';
        $direction = $request->get('direction') ? $request->get('direction') : 'desc';
        $sortWith = $request->get('with') ? $request->get('with') : Null;
        if($sortWith == 'users')
        {
            $resultQuery->orderBy('users.'.$sortBy, $direction);
        }
        else{
            $resultQuery->orderBy('catalogues.'.$sortBy, $direction);
        }
        $catalogues = $resultQuery->paginate(config('Reading.nodes_per_page'));
        $status = config('exhibition.status');

        return view('admin.catalogue.index', compact('catalogues', 'users','page_title', 'status'));
    }
    public function admin_index2()
    {
        $page_title = __('All Catalogues');
        $catalogues = Catalogue::get();
        //dd($catalogues);
        $users = User::get();
        return view('admin.catalogue.index', compact('catalogues','users','page_title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function admin_create()
    {
        $page_title = __('Add New Catalogue');
        $catalogues = Catalogue::get();
        $users = User::get();
        $exhibitions = Exhibition::get();
        $screenOption = config('catalogue.ScreenOption');
        $categoryArr = (new BlogCategory())->generateCategoryTreeListCheckbox(Null, ' ');
        $parentCategoryArr = (new BlogCategory())->generateCategoryTreeArray(Null, '&nbsp;&nbsp;&nbsp;');
        //dd($screenOption);
        return view('admin.catalogue.create', compact('users', 'exhibitions', 'categoryArr', 'parentCategoryArr', 'page_title', 'screenOption'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function admin_store(Request $request)
    {
        $validation = [
            'data.Catalogue.title'           => 'required',
            'data.Catalogue.content'         => ['required', new EditorEmptyCheckRule],
            'data.Catalogue.slug'            => 'unique:catalogues,slug',
            'data.Catalogue.publish_on'      => 'required',
            'data.CatalogueMeta.0.value'     => 'mimes:jpg,png,jpeg,gif',
        ];

        $validationMsg = [
            'data.Catalogue.title.required'      => __('The title field is required.'),
            'data.Catalogue.content.required'    => __('The Catalogue content field is required.'),
            'data.Catalogue.publish_on.required' => __('The published on field is required.'),
            'data.Catalogue.slug.unique'         => __('The slug has already been taken.'),
            'data.CatalogueMeta.0.value.mimes'   => __('The feature image must be a file of type: jpg, png, jpeg, gif.'),
        ];
        
        $this->validate($request, $validation, $validationMsg);
        $CatalogueData   = $request->input('data.Catalogue');
        $CatalogueData['user_id'] = $request->input('data.Catalogue.user_id') ? $request->input('data.Catalogue.user_id') : Auth::id();
    
        $catalogue   = Catalogue::create($CatalogueData);
        
        if($catalogue)
        {
            //DzHelper::saveFile($request,Exhibition::class,$catalogue,'uploads/configuration-images','CatalogueMeta');
            $result = $this->__imageSave($request, $catalogue, 'CatalogueMeta');
            if(count($result)>0){
                foreach ($result as $catalogueId => $imageFilename) {
                    $cataloguerecord = Catalogue::find($catalogueId);
                    if ($cataloguerecord) {
                        $catalogue->featured_id = $catalogueId;
                        $catalogue->featured_image = $imageFilename;
                        $catalogue->update();
                    }
                }
            }
            //dd($result);
            // need to update the record of exhibition of created  $exhibition->id
            return redirect()->route('catalogue.admin.index')->with('success', __('Catalogues added successfully.'));

        }
        return redirect()->back()->with('error', __('Something went wrong. Please try again.'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Catalogue  $catalogue
     * @return \Illuminate\Http\Response
     */
    public function admin_show(Catalogue $catalogue)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Catalogue  $catalogue
     * @return \Illuminate\Http\Response
     */
    public function admin_edit(Catalogue $catalogue)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Catalogue  $catalogue
     * @return \Illuminate\Http\Response
     */
    public function admin_update(Request $request, Catalogue $catalogue)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Catalogue  $catalogue
     * @return \Illuminate\Http\Response
     */
    public function admin_destroy(Catalogue $catalogue)
    {
        //
    }

    private function __imageSave($request, $model, $metatype)
    {
        $fileNameArr = [];

        $filedata = $request->file('data');
		$filedata = $filedata[$metatype] ?? [];

        if (empty($filedata)) {
            return $fileNameArr;
        }

        foreach ($filedata as $imgKey => $imgValue) {
			$imgKey = $model->id;
            if (is_array($imgValue['value'])) {
                $fileFullNames = [];

                foreach ($imgValue['value'] as $image) {
                    $fileFullName = $image->hashName();
                    $image->storeAs('uploads/configuration-images', $fileFullName);

                    // Add the media to the 'images' collection
                    $response=Catalogue::find($imgKey)->addMedia(storage_path('app/uploads/configuration-images/' . $fileFullName))
                        ->toMediaCollection('images');

                    $fileFullNames[] = $fileFullName;
                }

                $fileName = implode(",", $fileFullNames);
            } else {
                $fileName = $imgValue['value']->hashName();
                $imgValue['value']->storeAs('uploads/configuration-images', $fileName);

                // Add the media to the 'images' collection
                $response=Catalogue::find($imgKey)->addMedia(storage_path('app/uploads/configuration-images/' . $fileName))
                    ->toMediaCollection('images');
            }

            $fileNameArr[$response->id] = $fileName;
        }

        return $fileNameArr;
    }
}
