<?php

namespace App\Http\Controllers;

use App\Models\Mitra;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class MitraController extends Controller
{
    public function index()
    {
        return response()->json(Mitra::all(), 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_mitra' => 'required|string|max:255',
            'kategori'   => 'required|in:pemerintah,akademisi,lembaga', // Validasi pilihan
            'gambar'     => 'required|image|mimes:jpeg,png,jpg|max:10240',
        ], [
            'required' => 'Kolom :attribute wajib diisi!',
            'in'       => 'Pilihan kategori tidak valid!',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $data = $request->all();
        if ($request->hasFile('gambar')) {
            $data['gambar'] = $request->file('gambar')->store('mitra', 'public');
        }

        $mitra = Mitra::create($data);
        return response()->json(['message' => 'Mitra Berhasil Ditambahkan', 'data' => $mitra], 201);
    }

    public function update(Request $request, $id)
    {
        $mitra = Mitra::findOrFail($id);
        
        $validator = Validator::make($request->all(), [
            'nama_mitra' => 'required|string|max:255',
            'kategori'   => 'required|in:pemerintah,akademisi,lembaga',
            'gambar'     => 'nullable|image|max:10240',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $data = $request->all();

        if ($request->hasFile('gambar')) {
            if ($mitra->gambar) {
                Storage::disk('public')->delete($mitra->gambar);
            }
            $data['gambar'] = $request->file('gambar')->store('mitra', 'public');
        }

        $mitra->update($data);
        return response()->json(['message' => 'Data mitra berhasil diperbarui', 'data' => $mitra]);
    }

    public function destroy($id)
    {
        $mitra = Mitra::findOrFail($id);
        if ($mitra->gambar) {
            Storage::disk('public')->delete($mitra->gambar);
        }
        $mitra->delete();
        return response()->json(['message' => 'Mitra berhasil dihapus']);
    }
}