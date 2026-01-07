<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
| ddp_api fokusnya API. Semua tampilan user ada di React (Vercel),
| jadi web routes hanya untuk healthcheck dan pesan info.
*/

// Homepage (healthcheck)
Route::get('/', function () {
    return response()->json([
        'status'  => 'ok',
        'app'     => config('app.name'),
        'message' => 'ddp_api is running',
        'time'    => now()->toISOString(),
    ]);
})->name('site.home');

// Info jika ada yang akses backend langsung
Route::get('/login-admin', function () {
    return response()->json([
        'message' => 'Silakan buka Dashboard React (ddp_admin) / ddp_public di Vercel.',
    ]);
})->name('login');

// (Opsional) endpoint ping sederhana
Route::get('/health', function () {
    return response()->json(['status' => 'ok']);
});
