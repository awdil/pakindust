<?php

use App\Http\Controllers\Admin\AlbumController;

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

Route::middleware(['auth:sanctum', 'verified', 'permissions'])->prefix('admin/albums')->group(function () {
    Route::get('/', [AlbumController::class, 'admin_index'])->name('albums.admin.index');
    Route::get('/create', [AlbumController::class, 'admin_create'])->name('albums.admin.create');
    Route::post('/store', [AlbumController::class, 'admin_store'])->name('albums.admin.store');
    Route::get('/edit/{id}', [AlbumController::class, 'admin_edit'])->name('albums.admin.edit');
    Route::post('/update/{id}', [AlbumController::class, 'admin_update'])->name('albums.admin.update');
    Route::get('/delete/{id}', [AlbumController::class, 'admin_destroy'])->name('albums.admin.destroy');
    Route::get('/trash-status/{id}', [AlbumController::class, 'admin_trash_status'])->name('albums.admin.admin_trash_status');
});
