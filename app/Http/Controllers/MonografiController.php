<?php

namespace App\Http\Controllers;

use App\Models\Monografi; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;

class MonografiController extends Controller
{
    public function index()
    {
        try {
            $data = Monografi::latest()->get();
            return response()->json($data, 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal mengambil data'], 500);
        }
    }

    /**
     * SIMPAN DATA BARU (Tetap Wajib Semua)
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'desa'      => 'required|string|max:255',
            'kecamatan' => 'required|string|max:255',
            'kota'      => 'required|string|max:255',
            'provinsi'  => 'required|string|max:255',
            'tahun'     => 'required|numeric',
            'ringkasan' => 'required',
            'link'      => 'required|url',
            'gambar'    => 'required|image|mimes:jpeg,png,jpg|max:10240',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        try {
            $data = $request->all();
            if ($request->hasFile('gambar')) {
                $data['gambar'] = $request->file('gambar')->store('monografi', 'public');
            }
            $monografi = Monografi::create($data);
            return response()->json(['message' => 'Data Berhasil Disimpan!', 'data' => $monografi], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal simpan: ' . $e->getMessage()], 500);
        }
    }

    public function show($id)
    {
        $monografi = Monografi::find($id);
        if (!$monografi) return response()->json(['message' => 'Tidak ditemukan'], 404);
        return response()->json($monografi, 200);
    }

    /**
     * UPDATE DATA (Fleksibel & Parsial)
     * Solusi untuk Error 422 dan 500
     */
    public function update(Request $request, $id)
    {
        try {
            $monografi = Monografi::findOrFail($id);

            // 1. Ambil semua input
            $input = $request->all();

            // 2. Bersihkan input: Jika field kosong (string kosong), hapus dari daftar update
            // Ini mencegah error 422 karena field kosong dikirim ke validator 'url' atau 'numeric'
            $dataToValidate = array_filter($input, function($value) {
                return $value !== null && $value !== '';
            });

            // 3. Jalankan Validasi hanya pada data yang dikirim (sometimes)
            $validator = Validator::make($dataToValidate, [
                'desa'      => 'sometimes|string|max:255',
                'kecamatan' => 'sometimes|string|max:255',
                'kota'      => 'sometimes|string|max:255',
                'provinsi'  => 'sometimes|string|max:255',
                'tahun'     => 'sometimes|numeric',
                'ringkasan' => 'sometimes|string',
                'link'      => 'sometimes|url',
                'gambar'    => 'nullable|image|mimes:jpeg,png,jpg|max:10240',
            ]);

            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }

            // 4. Proses Gambar (Jika ada upload baru)
            if ($request->hasFile('gambar')) {
                // Hapus gambar lama jika ada
                if ($monografi->gambar && Storage::disk('public')->exists($monografi->gambar)) {
                    Storage::disk('public')->delete($monografi->gambar);
                }
                $dataToValidate['gambar'] = $request->file('gambar')->store('monografi', 'public');
            } else {
                // Pastikan kolom gambar tidak ditimpa jadi null
                unset($dataToValidate['gambar']);
            }

            // 5. Eksekusi Update hanya pada field yang tersisa di $dataToValidate
            $monografi->update($dataToValidate);

            return response()->json([
                'message' => 'Update Berhasil!',
                'data'    => $monografi
            ], 200);

        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        } catch (\Exception $e) {
            // Catat error ke log agar Mas bisa cek di storage/logs/laravel.log
            Log::error("Error Update Monografi ID $id: " . $e->getMessage());
            return response()->json(['message' => 'Server Error: ' . $e->getMessage()], 500);
        }
    }

    public function toggleFeatured($id)
    {
        try {
            $monografi = Monografi::findOrFail($id);
            if (!$monografi->is_featured) {
                if (Monografi::where('is_featured', 1)->count() >= 5) {
                    return response()->json(['message' => 'Maksimal 5 di beranda!'], 422);
                }
            }
            $monografi->is_featured = !$monografi->is_featured;
            $monografi->save();
            return response()->json(['message' => 'Status Berhasil Diubah'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal'], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $monografi = Monografi::findOrFail($id);
            if ($monografi->gambar && Storage::disk('public')->exists($monografi->gambar)) {
                Storage::disk('public')->delete($monografi->gambar);
            }
            $monografi->delete();
            return response()->json(['message' => 'Terhapus'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal'], 500);
        }
    }


    /**
 * Tampilkan Monografi dengan Pagination (untuk Public Page)
 */
    public function publicIndex(Request $request)
    {
    try {
        // Kita ambil 12 data per halaman, diurutkan dari yang terbaru
        // Jika ada pencarian (search), kita filter berdasarkan nama desa
        $query = $request->query('search');
        
        $data = Monografi::when($query, function($q) use ($query) {
            $q->where('desa', 'LIKE', "%{$query}%");
        })
        ->latest()
        ->paginate(12); // Otomatis mengurus halaman 1, 2, 3 dst

        return response()->json($data, 200);}
         catch (\Exception $e) {
        return response()->json(['message' => 'Gagal mengambil data'], 500);
        }
    }
}