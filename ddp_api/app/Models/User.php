<?php

namespace App\Models;

// Tambahkan library Sanctum untuk Token API
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    // Tambahkan HasApiTokens di sini agar React bisa login
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * Kolom yang boleh diisi (Mass Assignment)
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'role',         // Tambahkan ini
        'is_approved',  // Tambahkan ini
    ];

    /**
     * Kolom yang disembunyikan saat data dikirim ke React
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Pengaturan tipe data
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
            'is_approved' => 'boolean', // Memastikan status berupa true/false
        ];
    }
}