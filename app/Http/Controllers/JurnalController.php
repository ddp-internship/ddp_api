<?php

namespace App\Http\Controllers;

use App\Models\Jurnal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class JurnalController extends Controller
{
    public function index() {
    return response()->json(\App\Models\Jurnal::latest()->paginate(8));
}

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'judul'   => 'required|string',
            'penulis' => 'required|string',
            'link'    => 'required|url',
            'gambar'  => 'required|image|mimes:jpeg,png,jpg|max:10240'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $data = $request->all();
        if ($request->hasFile('gambar')) {
            $data['gambar'] = $request->file('gambar')->store('jurnal', 'public');
        }

        $jurnal = Jurnal::create($data);
        return response()->json(['message' => 'Jurnal berhasil disimpan!', 'data' => $jurnal], 201);
    }

    public function update(Request $request, $id) {
        $jurnal = Jurnal::findOrFail($id);
        $data = $request->all();

        if ($request->hasFile('gambar')) {
            if ($jurnal->gambar) { Storage::disk('public')->delete($jurnal->gambar); }
            $data['gambar'] = $request->file('gambar')->store('jurnal', 'public');
        }

        $jurnal->update($data);
        return response()->json(['message' => 'Jurnal berhasil diperbarui!']);
    }

    public function destroy($id) {
        $jurnal = Jurnal::findOrFail($id);
        if ($jurnal->gambar) { Storage::disk('public')->delete($jurnal->gambar); }
        $jurnal->delete();
        return response()->json(['message' => 'Jurnal dihapus!']);
    }
}