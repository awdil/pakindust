<?php

use App\Http\Controllers\Admin\ExhibitionsController;
use App\Http\Controllers\Admin\BlogCategoriesController;
use App\Http\Controllers\Admin\BlogTagsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware(['auth:sanctum', 'verified', 'permissions'])->prefix('admin/exhibitions')->group(function () {

    Route::get('/', [ExhibitionsController::class, 'admin_index'])->name('exhibitions.admin.index');
    Route::get('/create', [ExhibitionsController::class, 'admin_create'])->name('exhibitions.admin.create');
    Route::post('/store', [ExhibitionsController::class, 'admin_store'])->name('exhibitions.admin.store');
    Route::get('/edit/{id}', [ExhibitionsController::class, 'admin_edit'])->name('exhibitions.admin.edit');
    Route::post('/update/{id}', [ExhibitionsController::class, 'admin_update'])->name('exhibitions.admin.update');
    Route::get('/delete/{id}', [ExhibitionsController::class, 'admin_destroy'])->name('exhibitions.admin.destroy');
    Route::get('/trash-status/{id}', [ExhibitionsController::class, 'admin_trash_status'])->name('exhibitions.admin.admin_trash_status');
    Route::get('/restore-exhibitions/{id}', [ExhibitionsController::class, 'restore_exhibitions'])->name('exhibitions.admin.restore_exhibitions');
    Route::get('/trashed-exhibitionss', [ExhibitionsController::class, 'trash_list'])->name('exhibitions.admin.trash_list');
    Route::get('/remove_feature_image/{id}', [ExhibitionsController::class, 'remove_feature_image'])->name('exhibitions.admin.remove_feature_image');

    Route::match(['GET', 'POST'], '/categories/list/{id?}', [BlogCategoriesController::class, 'list'])->name('exhibitions_category.admin.list');
    Route::get('/categories/', [BlogCategoriesController::class, 'admin_index'])->name('exhibitions_category.admin.index');
    Route::get('/categories/create', [BlogCategoriesController::class, 'admin_create'])->name('exhibitions_category.admin.create');
    Route::post('/categories/store', [BlogCategoriesController::class, 'admin_store'])->name('exhibitions_category.admin.store');
    Route::get('/categories/edit/{id}', [BlogCategoriesController::class, 'admin_edit'])->name('exhibitions_category.admin.edit');
    Route::post('/categories/update/{id}', [BlogCategoriesController::class, 'admin_update'])->name('exhibitions_category.admin.update');
    Route::get('/categories/delete/{id}', [BlogCategoriesController::class, 'admin_destroy'])->name('exhibitions_category.admin.destroy');
    Route::get('/categories/trash-status/{id}', [BlogCategoriesController::class, 'admin_trash_status'])->name('exhibitions_category.admin.admin_trash_status');
    Route::post('/categories/admin_ajax_add_category', [BlogCategoriesController::class, 'admin_ajax_add_category'])->name('exhibitions_category.admin.admin_ajax_add_category');

    Route::match(['get'], '/categories/moveup/{id}', [BlogCategoriesController::class, 'admin_moveup'])->name('exhibitions_category.admin.categories.admin_moveup');
    Route::match(['get'], '/categories/movedown/{id}', [BlogCategoriesController::class, 'admin_movedown'])->name('exhibitions_category.admin.categories.admin_movedown');

    Route::match(['GET', 'POST'], '/tags/list/{id?}', [BlogTagsController::class, 'list'])->name('exhibitions_tag.admin.list');
    Route::get('/tags/', [BlogTagsController::class, 'admin_index'])->name('exhibitions_tag.admin.index');
    Route::get('/tags/create', [BlogTagsController::class, 'admin_create'])->name('exhibitions_tag.admin.create');
    Route::post('/tags/store', [BlogTagsController::class, 'admin_store'])->name('exhibitions_tag.admin.store');
    Route::get('/tags/edit/{id}', [BlogTagsController::class, 'admin_edit'])->name('exhibitions_tag.admin.edit');
    Route::post('/tags/update/{id}', [BlogTagsController::class, 'admin_update'])->name('exhibitions_tag.admin.update');
    Route::get('/tags/delete/{id}', [BlogTagsController::class, 'admin_destroy'])->name('exhibitions_tag.admin.destroy');

});
