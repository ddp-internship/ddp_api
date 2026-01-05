<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        // Menggunakan auth()->id() karena ini terbukti jalan di tempat Mas
        $users = User::where('id', '!=', auth()->id())->get();
        return response()->json($users);
    }

    public function toggleApprove($id)
    {
        $user = User::findOrFail($id);
        $user->is_approved = !$user->is_approved;
        $user->save();

        return response()->json([
            'message' => 'Status user diperbarui',
            'user' => $user
        ]);
    }

    // INI FUNGSI BARU UNTUK HAPUS
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        
        // Jangan izinkan hapus Super Admin
        if ($user->role == 1) {
            return response()->json(['message' => 'Super Admin tidak bisa dihapus'], 403);
        }

        $user->delete();
        return response()->json(['message' => 'User berhasil dihapus']);
    }
}