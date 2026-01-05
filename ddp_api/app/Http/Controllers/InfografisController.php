<?php

namespace App\Http\Controllers;

use App\Models\Infografis;
use App\Models\InfografisDownload;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use ZipArchive;

class InfografisController extends Controller
{
    /**
     * Admin: Tampilkan semua data
     */
    public function index() 
    { 
        return response()->json(Infografis::latest()->get(), 200); 
    }

    /**
     * Publik: Tampilkan 4 Infografis terpilih di Beranda
     */
    public function featured() 
    {
        $data = Infografis::where('is_approved_home', 1)->latest()->take(4)->get();
        return response()->json($data, 200);
    }

    /**
     * Publik: Tampilkan semua data untuk halaman Galeri Infografis (Paginasi 12)
     */
    public function indexAll(Request $request)
    {
        try {
            $search = $request->query('search');
            $query = Infografis::latest();

            if ($search) {
                $query->where('judul', 'LIKE', "%{$search}%");
            }

            return response()->json($query->paginate(12), 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal memuat database visual'], 500);
        }
    }

    /**
     * Admin: Simpan Data Baru (Multiple Upload)
     */
    public function store(Request $request) 
    {
        $validator = Validator::make($request->all(), [
            'judul'  => 'required|string|max:255',
            'gambar' => 'required|array', // Pastikan input adalah array file
            'gambar.*' => 'image|mimes:jpeg,png,jpg|max:10240' // Cek tiap file
        ]);

        if ($validator->fails()) return response()->json(['errors' => $validator->errors()], 422);

        try {
            $paths = [];
            if ($request->hasFile('gambar')) {
                foreach ($request->file('gambar') as $file) {
                    $paths[] = $file->store('infografis', 'public');
                }
            }

            $info = Infografis::create([
                'judul'      => $request->judul,
                'keterangan' => $request->keterangan ?? '-',
                'gambar'     => $paths,
                'link'       => $request->link ?? '#',
                'is_approved_home' => false
            ]);

            return response()->json(['message' => 'Infografis berhasil diterbitkan!', 'data' => $info], 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal simpan: ' . $e->getMessage()], 500);
        }
    }

    /**
     * Admin: Update Data (Dukungan ganti gambar parsial)
     */
    public function update(Request $request, $id) 
    {
        $info = Infografis::findOrFail($id);
        
        try {
            $data = [
                'judul' => $request->judul ?? $info->judul,
                'keterangan' => $request->keterangan ?? $info->keterangan,
                'link' => $request->link ?? $info->link
            ];

            if ($request->hasFile('gambar')) {
                // Hapus semua file lama di storage
                if (is_array($info->gambar)) {
                    foreach ($info->gambar as $oldPath) {
                        Storage::disk('public')->delete($oldPath);
                    }
                }
                
                // Simpan file baru
                $paths = [];
                foreach ($request->file('gambar') as $file) {
                    $paths[] = $file->store('infografis', 'public');
                }
                $data['gambar'] = $paths;
            }

            $info->update($data);
            return response()->json(['message' => 'Data diperbarui!', 'data' => $info], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal update'], 500);
        }
    }

    /**
     * Admin: Switch Tampilkan di Beranda (Maksimal 4)
     */
    public function toggleHome($id) 
    {
        $info = Infografis::findOrFail($id);
        
        if (!$info->is_approved_home) {
            $count = Infografis::where('is_approved_home', 1)->count();
            if ($count >= 4) {
                return response()->json(['message' => 'Maksimal hanya 4 infografis di Beranda!'], 422);
            }
        }

        $info->is_approved_home = !$info->is_approved_home;
        $info->save();
        
        return response()->json([
            'message' => $info->is_approved_home ? 'Ditampilkan di Beranda' : 'Dilepas dari Beranda',
            'is_approved_home' => $info->is_approved_home
        ], 200);
    }

    /**
     * Publik: Download semua gambar dalam satu ZIP (Verification Gate)
     */
    public function downloadZip(Request $request, $id) 
    {
        $request->validate([
            'email' => 'required|email',
            'instansi' => 'required',
            'keperluan' => 'required'
        ]);

        $info = Infografis::findOrFail($id);

        // 1. Catat Pengunjung (Log Data)
        InfografisDownload::create([
            'infografis_id' => $id, 
            'email' => $request->email, 
            'instansi' => $request->instansi, 
            'keperluan' => $request->keperluan
        ]);

        // 2. Proses Pembuatan ZIP
        $zip = new ZipArchive;
        $fileName = 'DDP-Visual-'.time().'.zip';
        $zipPath = storage_path('app/public/'.$fileName);

        if ($zip->open($zipPath, ZipArchive::CREATE | ZipArchive::OVERWRITE) === TRUE) {
            if (is_array($info->gambar)) {
                foreach ($info->gambar as $path) {
                    $fullPath = storage_path('app/public/' . $path);
                    if (file_exists($fullPath)) {
                        $zip->addFile($fullPath, basename($path));
                    }
                }
            }
            $zip->close();
        }

        return response()->json(['download_url' => url('storage/'.$fileName)], 200);
    }

    /**
     * Admin: Hapus Data & File Fisik
     */
    public function destroy($id) 
    {
        try {
            $info = Infografis::findOrFail($id);
            if (is_array($info->gambar)) {
                foreach ($info->gambar as $path) {
                    Storage::disk('public')->delete($path);
                }
            }
            $info->delete();
            return response()->json(['message' => 'Data dan file telah dihapus selamanya'], 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Gagal hapus data'], 500);
        }
    }
}