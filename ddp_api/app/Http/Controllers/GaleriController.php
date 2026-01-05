<?php

namespace App\Http\Controllers;

use App\Models\Galeri;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class GaleriController extends Controller
{
    /**
     * Tampilkan semua data (Digunakan Admin Dashboard)
     */
    public function index()
    {
        try {
            $data = Galeri::latest()->get();
            return response()->json($data, 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal mengambil data: ' . $e->getMessage()], 500);
        }
    }

    /**
     * FUNGSI LOGIKA KHUSUS: Ambil 11 Gambar Terbaru
     * Digunakan untuk Index Front-end utama
     */
    public function getLatest()
    {
        try {
            // Mengambil 11 data terbaru berdasarkan upload terakhir
            $data = Galeri::latest()->take(11)->get();
            return response()->json($data, 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal mengambil data galeri'], 500);
        }
    }

    /**
     * Simpan Foto Kegiatan Baru
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_kegiatan' => 'required|string|max:255',
            'tanggal'       => 'required|date',
            'deskripsi'     => 'required|string',
            'gambar'        => 'required|image|mimes:jpeg,png,jpg|max:10240', // Maks 10MB
        ], [
            'required' => 'Kolom :attribute wajib diisi!',
            'image'    => 'File harus berupa gambar!',
            'max'      => 'Ukuran gambar maksimal 10MB',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $data = $request->all();
            if ($request->hasFile('gambar')) {
                // Simpan di storage/app/public/galeri
                $data['gambar'] = $request->file('gambar')->store('galeri', 'public');
            }

            $galeri = Galeri::create($data);

            return response()->json([
                'message' => 'Foto kegiatan berhasil disimpan!',
                'data'    => $galeri
            ], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal simpan: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Ambil detail data untuk Form Edit di React
     */
    public function show($id)
    {
        $galeri = Galeri::find($id);
        if (!$galeri) {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
        return response()->json($galeri, 200);
    }

    /**
     * Update Data Galeri
     */
    public function update(Request $request, $id)
    {
        $galeri = Galeri::findOrFail($id);
        
        $validator = Validator::make($request->all(), [
            'nama_kegiatan' => 'required|string',
            'tanggal'       => 'required|date',
            'deskripsi'     => 'required',
            'gambar'        => 'nullable|image|mimes:jpeg,png,jpg|max:10240',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $data = $request->all();

            if ($request->hasFile('gambar')) {
                // Hapus foto lama agar tidak jadi sampah di harddisk
                if ($galeri->gambar) {
                    Storage::disk('public')->delete($galeri->gambar);
                }
                $data['gambar'] = $request->file('gambar')->store('galeri', 'public');
            }

            $galeri->update($data);

            return response()->json([
                'message' => 'Galeri berhasil diperbarui!',
                'data'    => $galeri
            ], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal update: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Hapus Foto & Data selamanya
     */
    public function destroy($id)
    {
        try {
            $galeri = Galeri::findOrFail($id);
            
            // Hapus file fisiknya
            if ($galeri->gambar) {
                Storage::disk('public')->delete($galeri->gambar);
            }

            $galeri->delete();

            return response()->json(['message' => 'Foto kegiatan telah dihapus selamanya'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal menghapus data'], 500);
        }
    }
    
    public function indexAll(Request $request)
    {
        try {
            // Mengambil semua foto kegiatan dengan paginasi 12
            // latest() memastikan foto terbaru muncul di halaman pertama
            $data = Galeri::latest()->paginate(12);
            return response()->json($data, 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal memuat arsip visual'], 500);
        }
    }
}