<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Testimoni extends Model
{
    use HasFactory;

    protected $table = 'testimoni';

    protected $fillable = [
        'nama', 
        'jabatan', 
        'tanggal', 
        'isi', 
        'gambar',
        'is_tampil' // Kolom baru untuk switch pilih 3
    ];

    // Casts ini wajib supaya di React nanti terbaca true/false (bukan 1/0)
    protected $casts = [
        'is_tampil' => 'boolean',
    ];
}