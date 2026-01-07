<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CapaianController;
use App\Http\Controllers\BeritaartikelController;
use App\Http\Controllers\MonografiController;
use App\Http\Controllers\InfografisController;
use App\Http\Controllers\GaleriController;
use App\Http\Controllers\BukuController;
use App\Http\Controllers\JurnalController;
use App\Http\Controllers\MitraController;
use App\Http\Controllers\TestimoniController;
use App\Http\Controllers\DownloadController;
use App\Http\Controllers\ContactController; // Tambahan untuk Form Hubungi Kami

/*
|--------------------------------------------------------------------------
| 1. JALUR PUBLIK (Website Depan)
|--------------------------------------------------------------------------
*/
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::post('/register', [AuthController::class, 'register']);

Route::get('/public/capaian', [CapaianController::class, 'index']);
Route::get('/public/mitra', [MitraController::class, 'index']);
// --- JALUR PUBLIK ---
// 1. Jalur untuk Index (Hanya 3 Terbaru)
Route::get('/public/berita', [BeritaartikelController::class, 'getLatest']);

// 2. Jalur untuk Halaman Berita Lengkap (Tampil Semua)
Route::get('/public/berita/all', [BeritaartikelController::class, 'index']);// Ambil semua dengan filter kategori untuk NewsPage (Fungsi yang baru kita update)
Route::get('/public/berita/all', [BeritaartikelController::class, 'indexAll']);
Route::get('/public/galeri', [GaleriController::class, 'index']);

// Jalur untuk menghitung jumlah total artikel berita
Route::get('/public/berita/count', function() {
    return response()->json(['total' => \App\Models\Beritaartikel::count()]);
});

// Modul Galeri (11 Terbaru untuk Index & Semua untuk Arsip)
Route::get('/public/galeri', [GaleriController::class, 'getLatest']);
Route::get('/public/galeri/all', [GaleriController::class, 'index']);
Route::get('/public/galeri/all', [GaleriController::class, 'indexAll']); // 12 Foto Galeri Page

// --- KHUSUS TESTIMONI PUBLIK (PILIH 3) ---
Route::get('/public/testimoni/featured', function() {
    // Hanya mengambil yang dicentang admin (is_tampil = 1) dan dibatasi cuma 3
    return \App\Models\Testimoni::where('is_tampil', 1)->latest()->take(5)->get();
});

Route::get('/public/testimoni/all', [TestimoniController::class, 'indexAll']);

// --- KHUSUS HUBUNGI KAMI (FORM KONTAK) ---
Route::post('/public/contact', [ContactController::class, 'store']);

// Jalur untuk menghitung jumlah total testimoni
Route::get('/public/testimoni/count', function() {
    return response()->json(['total' => \App\Models\Testimoni::count()]);
});

// --- KHUSUS INFOGRAFIS PUBLIK ---
Route::get('/public/infografis', [InfografisController::class, 'index']);
Route::get('/public/infografis/featured', [InfografisController::class, 'featured']);
Route::get('/public/infografis/all', [InfografisController::class, 'indexAll']);
Route::post('/public/infografis/{id}/download', [InfografisController::class, 'downloadZip']);

// --- KHUSUS MONOGRAFI PUBLIK ---
Route::get('/public/monografi/featured', function() {
    return \App\Models\Monografi::where('is_featured', 1)->take(5)->get();
});
Route::post('/public/monografi/download', [DownloadController::class, 'store']);
// Rute untuk Halaman Khusus Monografi (dengan pagination)
Route::get('/public/monografi/all', [MonografiController::class, 'publicIndex']);


// --- KHUSUS BUKU & JURNAL PUBLIK ---
Route::get('/public/buku/all', [App\Http\Controllers\BukuController::class, 'index']);
Route::get('/public/jurnal/all', [App\Http\Controllers\JurnalController::class, 'index']);
/*
|--------------------------------------------------------------------------
| 2. JALUR PRIVATE (Admin Dashboard)
|--------------------------------------------------------------------------
*/
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/users', [UserController::class, 'index']);
    Route::post('/users/{id}/toggle-approve', [UserController::class, 'toggleApprove']);
    Route::delete('/users/{id}', [UserController::class, 'destroy']);

    Route::apiResource('capaian', CapaianController::class);
    Route::get('/stats/capaian', [CapaianController::class, 'getStats']);
    Route::apiResource('beritaartikel', BeritaartikelController::class);
    Route::apiResource('monografi', MonografiController::class);
    Route::apiResource('infografis', InfografisController::class);
    Route::apiResource('galeri', GaleriController::class);
    Route::apiResource('buku', BukuController::class);
    Route::apiResource('jurnal', JurnalController::class);
    Route::apiResource('mitra', MitraController::class);
    Route::apiResource('testimoni', TestimoniController::class);

    // --- ROUTE KHUSUS TOGGLE / SWITCH ---
    Route::post('/monografi/{id}/toggle-featured', [MonografiController::class, 'toggleFeatured']);
    Route::post('/infografis/{id}/toggle-home', [InfografisController::class, 'toggleHome']);
    
    // Jalur untuk tombol pilih/switch 3 testimoni di dashboard admin
    Route::post('/testimoni/{id}/toggle-tampil', [TestimoniController::class, 'toggleTampil']);
});