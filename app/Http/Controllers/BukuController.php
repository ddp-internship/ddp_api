<?php

namespace App\Http\Controllers;

use App\Models\Buku;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class BukuController extends Controller
{
    public function index() {
    return response()->json(\App\Models\Buku::latest()->paginate(8));
}

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'judul'      => 'required|string',
            'penulis'    => 'required|string',
            'ringkasan'  => 'required',
            'link_drive' => 'required|url', // Wajib format link
            'gambar'     => 'required|image|mimes:jpeg,png,jpg|max:10240'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $data = $request->all();
        if ($request->hasFile('gambar')) {
            $data['gambar'] = $request->file('gambar')->store('buku', 'public');
        }

        $buku = Buku::create($data);
        return response()->json(['message' => 'Buku berhasil disimpan!', 'data' => $buku], 201);
    }

    public function update(Request $request, $id) {
        $buku = Buku::findOrFail($id);
        $data = $request->all();

        if ($request->hasFile('gambar')) {
            if ($buku->gambar) { Storage::disk('public')->delete($buku->gambar); }
            $data['gambar'] = $request->file('gambar')->store('buku', 'public');
        }

        $buku->update($data);
        return response()->json(['message' => 'Data buku berhasil diperbarui!']);
    }

    public function destroy($id) {
        $buku = Buku::findOrFail($id);
        if ($buku->gambar) { Storage::disk('public')->delete($buku->gambar); }
        $buku->delete();
        return response()->json(['message' => 'Buku dihapus!']);
    }
}