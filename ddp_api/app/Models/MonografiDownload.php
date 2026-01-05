<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MonografiDownload extends Model
{
    // Nama tabel di HeidiSQL
    protected $table = 'monografi_downloads';

    // Daftar kolom yang boleh diisi
    protected $fillable = [
        'monografi_id', 
        'email', 
        'instansi', 
        'keperluan'
    ];
}