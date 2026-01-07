<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InfografisDownload extends Model
{
    // Nama tabel di HeidiSQL
    protected $table = 'infografis_downloads';

    protected $fillable = [
        'infografis_id', 
        'email', 
        'instansi', 
        'keperluan'
    ];
}