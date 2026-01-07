<?php

namespace App\Http\Controllers;

use App\Models\Testimoni;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class TestimoniController extends Controller
{
    /**
     * Tampilkan semua data untuk Admin
     */
    public function index()
    {
        return response()->json(Testimoni::latest()->get(), 200);
    }

    /**
     * Simpan Data Baru
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama'    => 'required|string|max:255',
            'jabatan' => 'required|string|max:255',
            'tanggal' => 'required',
            'isi'     => 'required|string',
            'gambar'  => 'required|image|mimes:jpeg,png,jpg|max:10240',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $data = $request->all();
            if ($request->hasFile('gambar')) {
                $data['gambar'] = $request->file('gambar')->store('testimoni', 'public');
            }

            $testimoni = Testimoni::create($data);

            return response()->json([
                'message' => 'Testimoni berhasil ditambahkan!',
                'data'    => $testimoni
            ], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal simpan: ' . $e->getMessage()], 500);
        }
    }

    /**
     * FUNGSI KHUSUS: Pilih Maksimal 3 Testimoni untuk Beranda
     */
    public function toggleTampil($id)
    {
        try {
            $testi = Testimoni::findOrFail($id);
            
            // Jika admin mau mencentang (dari tidak tampil menjadi tampil)
            if (!$testi->is_tampil) {
                // Hitung berapa yang sudah dicentang saat ini
                $count = Testimoni::where('is_tampil', true)->count();
                
                // Jika sudah ada 3, tolak yang ke-4
                if ($count >= 5) {
                    return response()->json([
                        'message' => 'Maksimal hanya 3 testimoni yang dapat ditampilkan di Beranda!'
                    ], 422);
                }
            }

            // Balikkan statusnya
            $testi->is_tampil = !$testi->is_tampil;
            $testi->save();

            return response()->json([
                'message' => $testi->is_tampil ? 'Berhasil ditampilkan' : 'Berhasil disembunyikan',
                'is_tampil' => $testi->is_tampil
            ], 200);

        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal mengubah status'], 500);
        }
    }

    public function show($id)
    {
        $testimoni = Testimoni::find($id);
        if (!$testimoni) return response()->json(['message' => 'Data tidak ditemukan'], 404);
        return response()->json($testimoni, 200);
    }

    public function update(Request $request, $id)
    {
        $testimoni = Testimoni::findOrFail($id);
        
        $validator = Validator::make($request->all(), [
            'nama'    => 'required|string',
            'jabatan' => 'required|string',
            'tanggal' => 'required',
            'isi'     => 'required',
            'gambar'  => 'nullable|image|max:10240',
        ]);

        if ($validator->fails()) return response()->json(['errors' => $validator->errors()], 422);

        try {
            $data = $request->all();
            if ($request->hasFile('gambar')) {
                if ($testimoni->gambar) Storage::disk('public')->delete($testimoni->gambar);
                $data['gambar'] = $request->file('gambar')->store('testimoni', 'public');
            }

            $testimoni->update($data);
            return response()->json(['message' => 'Berhasil diperbarui!'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal update'], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $testimoni = Testimoni::findOrFail($id);
            if ($testimoni->gambar) Storage::disk('public')->delete($testimoni->gambar);
            $testimoni->delete();
            return response()->json(['message' => 'Dihapus'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal hapus'], 500);
        }
    }

    /**
     * FUNGSI PUBLIK: Mengambil seluruh testimoni untuk halaman Testimoni
     * Menggunakan Paginasi 9 data agar rapi dan tidak berat
     */
    public function indexAll()
    {
        try {
            $data = Testimoni::latest()->paginate(9);
            return response()->json($data, 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal memuat testimoni'], 500);
        }
    }
}