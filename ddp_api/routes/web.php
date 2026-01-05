<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontController;

/*
|--------------------------------------------------------------------------
| Web Routes (Untuk Tampilan Depan / Blade)
|--------------------------------------------------------------------------
*/

// Halaman Utama - Bisa diakses siapa saja
Route::get('/', [FrontController::class, 'index'])->name('site.home');

// Jalur bantuan agar jika ada error redirect, tidak muncul layar merah
Route::get('/login-admin', function () {
    return "Silakan buka Dashboard React Mas Abdullah di port 3000 atau 5173";
})->name('login');

/*
|--------------------------------------------------------------------------
| Admin Dashboard (Jika Mas Abdullah masih pakai Blade Admin lama)
|--------------------------------------------------------------------------
*/
Route::middleware('auth')->group(function () {
    Route::get('/admin-old', function () {
        return view('dashboard');
    });
});