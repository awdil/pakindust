<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
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
    public function index()
    {
        $page_title = __('All Catalogues');
        $catalogues = Catalogue::get();
        $users = User::get();
        return view('admin.catalogue.index', compact('catalogues','users','page_title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title = __('Add New Catalogue');
        $catalogues = Catalogue::get();
        $users = User::get();
        $exhibitions = Blog::get();
        $screenOption = config('exhibition.ScreenOption');
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
    public function store(Request $request)
    {
        $validation = [
            'data.Catalogue.title'           => 'required',
            'data.Catalogue.content'         => ['required', new EditorEmptyCheckRule],
            'data.Catalogue.slug'            => 'unique:blogs,slug',
            'data.Catalogue.publish_on'      => 'required',
            'data.CatalogueMeta.0.value'     => 'mimes:jpg,png,jpeg,gif',
        ];

        $validationMsg = [
            'data.Catalogue.title.required'      => __('The title field is required.'),
            'data.Catalogue.content.required'    => __('The exhibition content field is required.'),
            'data.Catalogue.publish_on.required' => __('The published on field is required.'),
            'data.Catalogue.slug.unique'         => __('The slug has already been taken.'),
            'data.CatalogueMeta.0.value.mimes'   => __('The feature image must be a file of type: jpg, png, jpeg, gif.'),
        ];
        
        $this->validate($request, $validation, $validationMsg);
        $CatalogueData   = $request->input('data.Catalogue');
        $CatalogueData['user_id'] = $request->input('data.Catalogue.user_id') ? $request->input('data.Catalogue.user_id') : Auth::id();
        $catalogue       = Exhibition::create($CatalogueData);
        $catalogue_metas = collect($request->data['CatalogueMeta'])->sortKeys()->all();
        $catalogueTag  = !empty($request->input('data.ExhibitionTag')) ? explode(',', $request->input('data.ExhibitionTag')) : '';

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
    public function show(Catalogue $catalogue)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Catalogue  $catalogue
     * @return \Illuminate\Http\Response
     */
    public function edit(Catalogue $catalogue)
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
    public function update(Request $request, Catalogue $catalogue)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Catalogue  $catalogue
     * @return \Illuminate\Http\Response
     */
    public function destroy(Catalogue $catalogue)
    {
        //
    }
}
