<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Infografis extends Model
{
    use HasFactory;

    protected $table = 'infografis';

    /**
     * Kolom yang boleh diisi.
     * Saya tambahkan 'is_approved_home' sesuai SOP seleksi 4 data di Beranda.
     */
    protected $fillable = [
        'judul',
        'is_approved_home', // Tambahan untuk saklar Admin
        'keterangan',
        'gambar', 
        'link'
    ];

    /**
     * Konversi Otomatis (Casts).
     * Sangat Penting: 'gambar' jadi array agar bisa simpan banyak file,
     * 'is_approved_home' jadi boolean agar terbaca true/false di React.
     */
    protected $casts = [
        'gambar' => 'array',
        'is_approved_home' => 'boolean',
    ];
}

