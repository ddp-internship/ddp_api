<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Capaian extends Model
{
    use HasFactory;

    // Sesuai nama tabel di HeidiSQL Mas
    protected $table = 'capaiandata';

    // Pendaftaran 9 kolom agar bisa disimpan sekaligus
    protected $fillable = [
        'desa', 'dusun', 'rw', 'kelurahan', 'bangunan', 'kk', 'jiwa', 'laki', 'perempuan'
    ];

    // Mengubah data teks dari DB menjadi Angka saat dikirim ke React
    protected $casts = [
        'desa'      => 'integer',
        'dusun'     => 'integer',
        'rw'        => 'integer',
        'kelurahan' => 'integer',
        'bangunan'  => 'integer',
        'kk'        => 'integer',
        'jiwa'      => 'integer',
        'laki'      => 'integer',
        'perempuan' => 'integer',
    ];
}