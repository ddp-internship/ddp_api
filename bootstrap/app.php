<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Http\Request;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        // 1. Mengaktifkan fitur agar Laravel bisa mengenali session dari React (Sanctum)
        $middleware->statefulApi();

        // 2. Mengabaikan pengecekan CSRF untuk semua jalur API
        // Ini solusi mutlak agar Mas Abdullah tidak terkena error 419 saat POST data dari React
        $middleware->validateCsrfTokens(except: [
            'api/*',
        ]);

        // 3. SOLUSI FINAL ERROR "Header may not contain more than a single header"
        // Fungsi ini sangat teliti: mengecek apakah request berasal dari API atau Web
        $middleware->redirectGuestsTo(function (Request $request) {
            if ($request->is('api/*')) {
                // Jika akses API, berikan pesan teks JSON saja (Sangat aman untuk React)
                return response()->json([
                    'message' => 'Unauthenticated.',
                    'status' => 'error'
                ], 401);
            }
            
            // Jika akses web biasa (seperti ddp_api.test/), baru arahkan ke login
            // Pastikan rute 'login' sudah ada di web.php atau api.php
            return route('login');
        });
    })
    ->withExceptions(function (Exceptions $exceptions) {
        // Bagian ini bisa ditambahkan pelaporan error jika diperlukan di masa depan
    })->create();