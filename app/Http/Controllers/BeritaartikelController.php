<?php

namespace App\Http\Controllers;

use App\Models\Beritaartikel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class BeritaartikelController extends Controller
{
    /**
     * Ambil Semua Berita (Untuk Tabel Admin)
     */
    public function index()
    {
        $data = Beritaartikel::latest()->get();
        return response()->json($data);
    }

    /**
     * Ambil 3 Berita Terbaru (Untuk Tampilan Depan/Index)
     */
    public function getLatest()
    {
        // Logika: Ambil 3 data terbaru berdasarkan waktu dibuat
        $data = Beritaartikel::latest()->take(3)->get();
        return response()->json($data);
    }

    /**
     * Simpan Berita Baru
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'judul_artikel' => 'required|string',
            'kategori'      => 'required|in:Berita,Artikel', // Validasi dropdown
            'penulis'       => 'required|string',
            'tanggal'       => 'required|date',
            'isi_artikel'   => 'required',
            'gambar'        => 'required|image|mimes:jpg,jpeg,png|max:10240', // Maks 10MB
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $data = $request->all();

            if ($request->hasFile('gambar')) {
                $data['gambar'] = $request->file('gambar')->store('berita', 'public');
            }

            $berita = Beritaartikel::create($data);

            return response()->json([
                'message' => 'Berita berhasil diterbitkan!',
                'data'    => $berita
            ], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal simpan: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Ambil Detail Berita (Untuk Edit atau Baca Selengkapnya)
     */
    public function show($id)
    {
        $berita = Beritaartikel::find($id);
        if (!$berita) {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
        return response()->json($berita, 200);
    }

    /**
     * Update Berita
     */
    public function update(Request $request, $id)
    {
        $berita = Beritaartikel::findOrFail($id);
        
        $validator = Validator::make($request->all(), [
            'judul_artikel' => 'required|string',
            'penulis'       => 'required|string',
            'tanggal'       => 'required|date',
            'isi_artikel'   => 'required',
            'gambar'        => 'nullable|image|max:10240',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $data = $request->all();

            if ($request->hasFile('gambar')) {
                if ($berita->gambar) {
                    Storage::disk('public')->delete($berita->gambar);
                }
                $data['gambar'] = $request->file('gambar')->store('berita', 'public');
            }

            $berita->update($data);
            return response()->json(['message' => 'Berita berhasil diperbarui!'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal update'], 500);
        }
    }

    /**
     * Hapus Berita
     */
    public function destroy($id)
    {
        try {
            $berita = Beritaartikel::findOrFail($id);
            if ($berita->gambar) {
                Storage::disk('public')->delete($berita->gambar);
            }
            $berita->delete();
            return response()->json(['message' => 'Berita telah dihapus'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal hapus data'], 500);
        }
    }

    public function indexAll(Request $request)
    {
        try {
            $search = $request->query('search');
            $kategori = $request->query('kategori'); // Ambil filter kategori

            $query = Beritaartikel::latest();

            // Filter berdasarkan pencarian judul
            if ($search) {
                $query->where('judul_artikel', 'LIKE', "%{$search}%");
            }

            // Filter berdasarkan kategori (Berita/Artikel)
            if ($kategori) {
                $query->where('kategori', $kategori);
            }

            return response()->json($query->paginate(9), 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal memuat arsip berita'], 500);
        }
    }
}