<?php

namespace App\Http\Controllers\admin;

use App\Helper\DzHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Exhibition;
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

class ExhibitionsController extends Controller
{
    
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function admin_index(Request $request)
    {
        $page_title = __('All Exhibitions');
        $resultQuery = Exhibition::query();
        $users = User::get();
        $blog_categories = BlogCategory::get();
        $blog_tags = BlogTag::get();

        if($request->isMethod('get') && $request->input('todo') == 'Filter')
        {
            if($request->filled('title')) {
                $resultQuery->where('title', 'like', "%{$request->input('title')}%");
            }
            if($request->filled('status')) {
                $resultQuery->where('status', '=', $request->input('status'));
            }
            if($request->filled('from') && $request->filled('to')) {
                $resultQuery->whereBetween('exhibitions.created_at', [$request->input('from'), $request->input('to')]);
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
        $resultQuery->join('users', 'exhibitions.user_id', '=', 'users.id');
        $resultQuery->select('exhibitions.*','users.name as user_name');
        $resultQuery->where('status', '!=', 3);

        $sortBy = $request->get('sort') ? $request->get('sort') : 'created_at';
        $direction = $request->get('direction') ? $request->get('direction') : 'desc';
        $sortWith = $request->get('with') ? $request->get('with') : Null;
        if($sortWith == 'users')
        {
            $resultQuery->orderBy('users.'.$sortBy, $direction);
        }
        else{
            $resultQuery->orderBy('exhibitions.'.$sortBy, $direction);
        }
        $exhibitions = $resultQuery->paginate(config('Reading.nodes_per_page'));
        $status = config('exhibition.status');

        return view('admin.exhibitions.index', compact('exhibitions','blog_categories','blog_tags','users','page_title', 'status'));
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function admin_create()
    {
        $page_title = __('Add New Exhibition');
        $exhibitions = Blog::get();
        $users = User::get();
        $categoryArr = (new BlogCategory())->generateCategoryTreeListCheckbox(Null, ' ');
        $parentCategoryArr = (new BlogCategory())->generateCategoryTreeArray(Null, '&nbsp;&nbsp;&nbsp;');
        $screenOption = config('exhibition.ScreenOption');
        
        //dd($screenOption);
        return view('admin.exhibitions.create', compact('users', 'exhibitions', 'categoryArr', 'parentCategoryArr', 'page_title', 'screenOption'));
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function admin_store(Request $request)
    {
        
        $validation = [
            'data.Exhibition.title'           => 'required',
            'data.Exhibition.content'         => ['required', new EditorEmptyCheckRule],
            'data.Exhibition.slug'            => 'unique:blogs,slug',
            'data.Exhibition.publish_on'      => 'required',
            'data.ExhibitionMeta.0.value'     => 'mimes:jpg,png,jpeg,gif',
        ];

        $validationMsg = [
            'data.Exhibition.title.required'      => __('The title field is required.'),
            'data.Exhibition.content.required'    => __('The exhibition content field is required.'),
            'data.Exhibition.publish_on.required' => __('The published on field is required.'),
            'data.Exhibition.slug.unique'         => __('The slug has already been taken.'),
            'data.ExhibitionMeta.0.value.mimes'   => __('The feature image must be a file of type: jpg, png, jpeg, gif.'),
        ];
        
        $this->validate($request, $validation, $validationMsg);
        $ExhibitionData   = $request->input('data.Exhibition');
        $ExhibitionData['user_id'] = $request->input('data.Exhibition.user_id') ? $request->input('data.Exhibition.user_id') : Auth::id();
        $exhibition       = Exhibition::create($ExhibitionData);
        $exhibition_metas = collect($request->data['ExhibitionMeta'])->sortKeys()->all();
        $ExhibitionTag  = !empty($request->input('data.ExhibitionTag')) ? explode(',', $request->input('data.ExhibitionTag')) : '';

        if($exhibition)
        {
            

            //DzHelper::saveFile($request,Exhibition::class,$exhibition,'uploads/configuration-images','ExhibitionMeta');
            $result = $this->__imageSave($request, $exhibition, 'ExhibitionMeta');
            if(count($result)>0){
                foreach ($result as $exhibitionId => $imageFilename) {
                    $exhibitionrecord = Exhibition::find($exhibitionId);
                    if ($exhibitionrecord) {
                        $exhibition->featured_id = $exhibitionId;
                        $exhibition->featured_image = $imageFilename;
                        $exhibition->update();
                    }
                }
            }
            //dd($result);
            // need to update the record of exhibition of created  $exhibition->id
            return redirect()->route('exhibitions.admin.index')->with('success', __('Exhibitions added successfully.'));

        }
        return redirect()->back()->with('error', __('Something went wrong. Please try again.'));
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('admin.exhibitions.show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function admin_edit($id)
    {
        $page_title = __('Exhibition Edit');
        $exhibitions = Exhibition::where('id', '!=', $id)->get();
        $users = User::get();
        $exhibition = Exhibition::with('user', 'featuredImage')->findorFail($id);
        
        // $blogCatArr = array_column($blog->blog_categories->toArray(), 'id');
        // $categoryArr = (new BlogCategory())->generateCategoryTreeListCheckbox(Null, ' ', $blogCatArr);
        // $parentCategoryArr = (new BlogCategory())->generateCategoryTreeArray(Null, '&nbsp;&nbsp;&nbsp;');
        // $tags = array_column($blog->blog_tags->toArray(), 'title');
        // $blog_tags = implode(',', $tags);
        $screenOption = config('exhibition.ScreenOption');
        return view('admin.exhibitions.edit', compact('exhibitions', 'users', 'exhibition', 'page_title', 'screenOption'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function admin_update(Request $request, $id)
    {

        $validation = [
                'data.Exhibition.title'           => 'required',
                'data.Exhibition.content'         => ['required', new EditorEmptyCheckRule],
                'data.Exhibition.publish_on'      => 'required',
                'data.Exhibition.slug'            => 'unique:blogs,slug,'.$id,
                'data.BlogMeta.0.value'     => 'mimes:jpg,png,jpeg,gif',
            ];

        $validationMsg = [
            'data.Exhibition.title.required'      => __('The title field is required.'),
            'data.Exhibition.content.required'    => __('The blog content field is required.'),
            'data.Exhibition.publish_on.required' => __('The published on field is required.'),
            'data.Exhibition.slug.unique'         => __('The slug has already been taken.'),
            'data.BlogMeta.0.value.mimes'   => __('The feature image must be a file of type: jpg, png, jpeg, gif.'),
        ];

        $this->validate($request, $validation, $validationMsg);

        $blog               = Blog::findorFail($id);
        $blogArr            = $request->input('data.Blog');
        $blogArr['slug']    = $request->input('data.Exhibition.editslug');
        $blog->fill($blogArr)->save();
        $blog_metas = collect($request->data['BlogMeta'])->sortKeys()->all();
        $blog_tags  = !empty($request->input('data.BlogTag')) ? explode(',', $request->input('data.BlogTag')) : '';

        if($blog)
        {
            BlogSeo::updateOrCreate(
                ['blog_id' => $blog->id],
                [
                    'blog_id'           => $blog->id, 
                    'page_title'        => $request->input('data.BlogSeo.page_title'), 
                    'meta_keywords'     => $request->input('data.BlogSeo.meta_keywords'),
                    'meta_descriptions' => $request->input('data.BlogSeo.meta_descriptions'),
                    'blog_url'          => $request->input('data.BlogSeo.blog_url'),
                ]
            );

            $BlogTagIds = array();

            if(!empty($blog_tags))
            {
                foreach ($blog_tags as $blog_tag) 
                {
                    $BlogTag = BlogTag::where('title', '=', $blog_tag)->where('user_id', '=', \Auth::id())->first();

                    if(!empty($BlogTag))
                    {
                        $BlogTagIds[] = $BlogTag->id;
                    }
                    else
                    {
                        $BlogTag = new BlogTag();
                        $BlogTag->title = $blog_tag;
                        $BlogTag->slug = $blog_tag;
                        $BlogTag->user_id = \Auth::id();
                        $BlogTag->save();
                        $BlogTagIds[] = $BlogTag->id;
                    }

                }
            }

            $blog->blog_categories()->sync($request->input('data.BlogCategory'));
            $blog->blog_tags()->sync($BlogTagIds);

            if(!empty($blog_metas))
            {   
                $blogMetaIds = array_column($blog_metas, 'meta_id');
                BlogMeta::where('blog_id', '=', $id)->whereNotIn('id', $blogMetaIds)->delete();

                foreach ($blog_metas as $blog_meta) {

                    if($blog_meta['title'] != 'ximage')
                    {
                        $blog->blog_meta()->create($blog_meta);
                    }
                    else
                    {
                        if(!empty($blog_meta['value']))
                        {
                            $OriginalName = $blog_meta['value']->getClientOriginalName();
                            $fileName = time().'_'.$OriginalName;
                            $blog_meta['value']->storeAs('public/blog-images/', $fileName);
                            if($blog_meta['old_value'] && Storage::exists('public/blog-images/'.$blog_meta['old_value']))
                            {
                                Storage::delete('public/blog-images/'.$blog_meta['old_value']);
                            }
                            $blog_meta['value'] = $fileName;
                        }
                        else
                        {
                            if(Storage::exists('public/blog-images/'.$blog_meta['old_value']))
                            {
                                $blog_meta['value'] = $blog_meta['old_value'];
                            }
                        }
                        $blog->blog_meta()->create($blog_meta);
                    }
                    
                }
            }

            return redirect()->route('blog.admin.index')->with('success', __('Blog added successfully.'));

        }
        return redirect()->back()->with('error', __('Something went wrong. Please try again.'));
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function admin_destroy($id)
    {
        
        $blog           = Blog::findOrFail($id);
        $res            = $blog->delete();
        if($res)
        {
            return redirect()->back()->with('success', __('Blog Deleted successfully.'));
        }
        return redirect()->back()->with('error', __('Something went wrong. Please try again.'));
    }

    public function admin_trash_status($id)
    {
        $blog           = Blog::findOrFail($id);
        $blog->status   = 3;
        $res            = $blog->save();

        if($res)
        {
            return redirect()->back()->with('success', __('Blog is trashed successfully.'));
        }
        return redirect()->back()->with('error', __('Something went wrong. Please try again.'));
    }

    public function restore_blog($id)
    {
        $blog           = Blog::findOrFail($id);
        $blog->status   = 1;
        $res            = $blog->update();

        if($res)
        {
            return redirect()->back()->with('success', 'Blog is restored successfully.');
        }
        return redirect()->back()->with('error', 'Something went wrong. Please try again.');
    }

    public function trash_list(Request $request)
    {
        $page_title = 'Trashed Exhibitions';
        $resultQuery = Blog::query();


        $resultQuery->join('users', 'blogs.user_id', '=', 'users.id');
        $resultQuery->select('blogs.*','users.name as user_name');
        $resultQuery->where('status', '=', 3);

        $sortBy = $request->get('sort') ? $request->get('sort') : 'created_at';
        $direction = $request->get('direction') ? $request->get('direction') : 'desc';
        $sortWith = $request->get('with') ? $request->get('with') : Null;
        if($sortWith == 'users')
        {
            $resultQuery->orderBy('users.'.$sortBy, $direction);
        }
        else{
            $resultQuery->orderBy('blogs.'.$sortBy, $direction);
        }

        $blogs = $resultQuery->paginate(config('Reading.nodes_per_page'));

        return view('admin.exhibitions.trashed_blogs', compact('blogs'));
    }

    public function blogCategoryTree1($id = Null, $level = 0)
    {
        $parents    = BlogCategory::where('parent_id', '=', $id)->get();
        $res        = isset($res) ? $res : array();
        $blank = "";

        if(!empty($parents))
        {   
            $level++;
            $res[] = '<ul type="none">';
        
            $i = 0;
            for($i=1; $i< $level; $i++) {

                $blank .= " ";
            
                foreach($parents as $value)
                {
                    $checkbox = '<input type="checkbox" name="data[BlogCategory][BlogCategory]" class="blog_categories" value="'.$value->id.'">';
                    $title = $value->title;
                    $res[] = sprintf('<li>'.$blank.$checkbox.$title.' %s</li>', $this->blogCategoryTree($value->id, $level));
                }
            }
        
            $res[] = '</ul>';
        }
        return implode('', $res);
    }

    public function blogCategoryTree($id = Null, $level = 0)
    {
        $parents    = BlogCategory::where('parent_id', '=', $id)->get();
        $res        = !empty($res) ? $res : array();
        $blank = "";
        if(!empty($parents))
        {   
            $level++;
            for($i=0; $i< $level; $i++) {
                $blank .= " ";
                foreach($parents as $value)
                {
                    $title = $blank.$value->title;
                    $res[] = $title;
                    array_merge($res, $this->blogCategoryTree($value->id, $level));
                }
            }
        }
        return $res;
    }

    public function remove_feature_image($id)
    {
        $blog_meta  = BlogMeta::where('title', '=', 'ximage')->where('blog_id', '=', $id)->first();
        if(!empty($blog_meta->value) && Storage::exists('public/blog-images/'.$blog_meta->value))
        {
            Storage::delete('public/blog-images/'.$blog_meta->value);
            return $blog_meta->delete();
        }
    }

    private function __imageSave000($request, $model)
    {
        $fileNameArr = [];

        // Assuming 'ExhibitionMeta' is present in the request and is not empty
        if (!empty($request->data['ExhibitionMeta'][0])) {
            $imgValue = $request->data['ExhibitionMeta'][0]['title']; // Replace with the actual field containing the base64-encoded image

            // Replace 'your_model_id_field' with the actual field name containing the Exhibition model ID
            $imgKey = $model->id;

            // Assuming 'Exhibition' is the model class
            $exhibition = Exhibition::find($imgKey);

            // Decode the base64 image data
            $decodedImage = base64_decode($imgValue);

            // Get the original file extension
            $fileExtension = mime_content_type($decodedImage);
            $fileExtension = explode('/', $fileExtension)[1];

            // Generate a unique filename with the original extension
            $fileName = uniqid() . '_' . time() . '.' . $fileExtension;

            // Save the image to the storage path
            Storage::disk('local')->put('uploads/configuration-images/' . $fileName, $decodedImage);

            // Add the media to the 'images' collection
            $exhibition->addMedia(storage_path('app/uploads/configuration-images/' . $fileName))
                ->toMediaCollection('images');

            $fileNameArr[] = $fileName; // Store the generated filename

            // Alternatively, you can store the full path to the file if needed:
            // $fileNameArr[] = storage_path('app/uploads/configuration-images/' . $fileName);
        }

        return $fileNameArr;
    }

    private function __HelpimageSave($request, $model, $metatype)
    {
        $resultArray = [];

        $filedata = $request->file('data');
        $filedata = $filedata[$metatype] ?? [];

        if (empty($filedata)) {
            return $resultArray;
        }

        foreach ($filedata as $imgKey => $imgValue) {
            $imgKey = $model->id;

            if (is_array($imgValue['value'])) {
                $fileFullNames = [];
                $responses = [];

                foreach ($imgValue['value'] as $image) {
                    $fileFullName = $image->hashName();
                    $image->storeAs('uploads/configuration-images', $fileFullName);

                    // Add the media to the 'images' collection
                    $response = Exhibition::find($imgKey)->addMedia(storage_path('app/uploads/configuration-images/' . $fileFullName))
                        ->toMediaCollection('images');

                    $fileFullNames[] = $fileFullName;
                    $responses[] = $response;
                }

                $fileName = implode(",", $fileFullNames);
            } else {
                $fileName = $imgValue['value']->hashName();
                $imgValue['value']->storeAs('uploads/configuration-images', $fileName);

                // Add the media to the 'images' collection
                $response = Exhibition::find($imgKey)->addMedia(storage_path('app/uploads/configuration-images/' . $fileName))
                    ->toMediaCollection('images');
            }

            $resultArray[$imgKey] = [
                'file_name' => $fileName,
                'response'  => $response ?? null,
            ];
        }

        return $resultArray;
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
                    $response=Exhibition::find($imgKey)->addMedia(storage_path('app/uploads/configuration-images/' . $fileFullName))
                        ->toMediaCollection('images');

                    $fileFullNames[] = $fileFullName;
                }

                $fileName = implode(",", $fileFullNames);
            } else {
                $fileName = $imgValue['value']->hashName();
                $imgValue['value']->storeAs('uploads/configuration-images', $fileName);

                // Add the media to the 'images' collection
                $response=Exhibition::find($imgKey)->addMedia(storage_path('app/uploads/configuration-images/' . $fileName))
                    ->toMediaCollection('images');
            }

            $fileNameArr[$response->id] = $fileName;
        }

        return $fileNameArr;
    }


}
