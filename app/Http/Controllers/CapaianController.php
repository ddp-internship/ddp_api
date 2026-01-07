<?php

namespace App\Http\Controllers;

use App\Models\Capaian;
use App\Models\Beritaartikel;
use App\Models\User;
use App\Models\Testimoni;
use App\Models\Galeri;
use App\Models\Mitra;
use App\Models\Monografi;
use App\Models\Infografis;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;

class CapaianController extends Controller
{
    /**
     * Tampilkan semua data untuk Tabel di Dashboard React
     */
    public function index()
    {
        try {
            $data = Capaian::latest()->get();
            return response()->json($data, 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal mengambil data: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Simpan data statistik baru
     */
    public function store(Request $request)
    {
        // 1. Validasi Input dengan Pesan Kustom Bahasa Indonesia
        $validator = Validator::make($request->all(), [
            'desa'      => 'required|numeric',
            'dusun'     => 'required|numeric',
            'rw'        => 'required|numeric',
            'kelurahan' => 'required|numeric',
            'bangunan'  => 'required|numeric',
            'kk'        => 'required|numeric',
            'jiwa'      => 'required|numeric',
            'laki'      => 'required|numeric',
            'perempuan' => 'required|numeric',
        ], [
            'required' => 'Kolom :attribute wajib diisi!',
            'numeric'  => 'Kolom :attribute harus berupa angka!',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            $capaian = Capaian::create($request->all());
            return response()->json([
                'status'  => 'success',
                'message' => 'Data Capaian Berhasil Disimpan!',
                'data'    => $capaian
            ], 201);
        } catch (\Exception $e) {
            Log::error('Error Simpan Capaian: ' . $e->getMessage());
            return response()->json(['message' => 'Terjadi kesalahan sistem.'], 500);
        }
    }

    /**
     * Ambil detail satu data untuk Form Edit
     */
    public function show($id)
    {
        $capaian = Capaian::find($id);
        if (!$capaian) {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
        return response()->json($capaian, 200);
    }

    /**
     * Update data di database
     */
    public function update(Request $request, $id)
    {
        $capaian = Capaian::find($id);
        if (!$capaian) {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }

        $validator = Validator::make($request->all(), [
            'desa'      => 'required|numeric',
            'bangunan'  => 'required|numeric',
            'kk'        => 'required|numeric',
            'jiwa'      => 'required|numeric',
            'laki'      => 'required|numeric',
            'perempuan' => 'required|numeric',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $capaian->update($request->all());

        return response()->json([
            'message' => 'Data Capaian Berhasil Diperbarui!',
            'data'    => $capaian
        ], 200);
    }

    /**
     * Hapus data permanen
     */
    public function destroy($id)
    {
        $capaian = Capaian::find($id);
        if (!$capaian) {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }

        $capaian->delete();
        return response()->json(['message' => 'Data Berhasil Dihapus permanen'], 200);
    }

    /**
     * FUNGSI UTAMA DASHBOARD: Menghimpun seluruh data statistik sistem
     * Endpoint ini dipanggil oleh Dashboard.tsx (ddp_admin)
     */
    public function getStats()
    {
        try {
            return response()->json([
                // Statistik Akumulasi dari Tabel Capaian
                'totalDesa'       => (int) Capaian::sum('desa'),
                
                // Statistik Konten Publikasi
                'totalBerita'     => Beritaartikel::count(),
                'totalTestimoni'  => Testimoni::count(),
                'totalGaleri'     => Galeri::count(),
                'totalMonografi'  => Monografi::count(),
                'totalInfografis' => Infografis::count(),
                
                // Statistik Stakeholder & User
                'totalMitra'      => Mitra::count(),
                'totalUser'       => User::where('is_approved', 1)->count(),
                
                // Data Tambahan untuk Visualisasi (Opsional jika ingin dipakai di depan)
                'totalJiwa'       => (int) Capaian::sum('jiwa'),
                'totalLaki'       => (int) Capaian::sum('laki'),
                'totalPerempuan'  => (int) Capaian::sum('perempuan'),
            ], 200);
        } catch (\Exception $e) {
            Log::error('Error getStats: ' . $e->getMessage());
            return response()->json(['message' => 'Gagal memuat statistik sistem'], 500);
        }
    }
}