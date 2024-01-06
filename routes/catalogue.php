<?php

use App\Http\Controllers\Admin\CatalogueController;

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

Route::middleware(['auth:sanctum', 'verified', 'permissions'])->prefix('admin/catalogues')->group(function () {
    Route::get('/', [CatalogueController::class, 'admin_index'])->name('catalogues.admin.index');
    Route::get('/create', [CatalogueController::class, 'admin_create'])->name('catalogues.admin.create');
    Route::post('/store', [CatalogueController::class, 'admin_store'])->name('catalogues.admin.store');
    Route::get('/edit/{id}', [CatalogueController::class, 'admin_edit'])->name('catalogues.admin.edit');
    Route::post('/update/{id}', [CatalogueController::class, 'admin_update'])->name('catalogues.admin.update');
    Route::get('/delete/{id}', [CatalogueController::class, 'admin_destroy'])->name('catalogues.admin.destroy');
});
