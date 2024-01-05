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

Route::middleware(['auth:sanctum', 'verified', 'permissions'])->prefix('admin/catalogue')->group(function () {
    Route::get('/', [CatalogueController::class, 'index'])->name('catalogue.admin.index');
    Route::get('/create', [CatalogueController::class, 'create'])->name('catalogue.admin.create');
    Route::post('/store', [CatalogueController::class, 'store'])->name('catalogue.admin.store');
    Route::get('/edit/{id}', [CatalogueController::class, 'edit'])->name('catalogue.admin.edit');
    Route::post('/update/{id}', [CatalogueController::class, 'update'])->name('catalogue.admin.update');
    Route::get('/delete/{id}', [CatalogueController::class, 'destroy'])->name('catalogue.admin.destroy');
});
