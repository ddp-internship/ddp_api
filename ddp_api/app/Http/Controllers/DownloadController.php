<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// WAJIB: Panggil Model yang baru saja kita buat
use App\Models\MonografiDownload; 
use Illuminate\Support\Facades\Validator;

class DownloadController extends Controller
{
    /**
     * Fungsi untuk mencatat data pengunjung sebelum download Monografi
     */
    public function store(Request $request)
    {
        // 1. Validasi Input (Email harus format email yang benar)
        $validator = Validator::make($request->all(), [
            'monografi_id' => 'required|exists:monografi,id', // Cek apakah ID buku ada di tabel monografi
            'email'        => 'required|email',
            'instansi'     => 'required|string|max:255',
            'keperluan'    => 'required|string',
        ], [
            'required' => 'Kolom :attribute wajib diisi!',
            'email'    => 'Format email tidak valid!',
            'exists'   => 'Buku yang dimaksud tidak ditemukan di sistem.',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            // 2. Simpan data menggunakan Model (Sesuai SOP)
            $log = MonografiDownload::create([
                'monografi_id' => $request->monografi_id,
                'email'        => $request->email,
                'instansi'     => $request->instansi,
                'keperluan'    => $request->keperluan,
            ]);

            return response()->json([
                'status'  => 'success',
                'message' => 'Verifikasi berhasil, akses dokumen diberikan.',
                'data'    => $log
            ], 200);

        } catch (\Exception $e) {
            return response()->json([
                'status'  => 'error',
                'message' => 'Gagal mencatat data: ' . $e->getMessage()
            ], 500);
        }
    }
}