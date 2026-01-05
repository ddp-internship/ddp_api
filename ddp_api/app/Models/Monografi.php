<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Monografi extends Model
{
    use HasFactory;

    protected $table = 'monografi';

    protected $fillable = [
        'desa', 
        'kecamatan', 
        'kota', 
        'provinsi', 
        'tahun', 
        'ringkasan', 
        'gambar', 
        'link',
        'is_featured'
    ];

    protected $casts = [
        'is_featured' => 'boolean',
    ];
}