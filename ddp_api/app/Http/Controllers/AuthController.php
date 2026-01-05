<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    // 1. Fungsi Pendaftaran (Register)
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => 2, // Default: Admin Biasa
            'is_approved' => 0, // Default: Belum di-ACC (Terkunci)
        ]);

        return response()->json([
            'message' => 'Pendaftaran berhasil. Tunggu persetujuan Super Admin untuk bisa login.'
        ], 201);
    }

    // 2. Fungsi Login (Cek Approval)
    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            $user = Auth::user();

            // CEK APAKAH SUDAH DI-ACC
            if ($user->is_approved == 0) {
                Auth::logout();
                return response()->json([
                    'message' => 'Akun Anda belum aktif. Menunggu ACC dari Super Admin.'
                ], 403);
            }

            $token = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                'message' => 'Login Berhasil',
                'access_token' => $token,
                'user' => [
                    'id' => $user->id,
                    'name' => $user->name,
                    'email' => $user->email,
                    'role_id' => $user->role // 1: Super Admin, 2: Admin
                ]
            ]);
        }

        return response()->json(['message' => 'Email atau password salah.'], 401);
    }
}