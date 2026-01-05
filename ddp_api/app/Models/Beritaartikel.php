<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Beritaartikel extends Model
{
    protected $table = 'beritaartikel'; // Beritahu nama tabelnya
    protected $fillable = [
        'judul_artikel', 
        'kategori', // Tambahkan kolom kategori di sini
        'penulis', 
        'tanggal', 
        'isi_artikel', 
        'gambar'];
}
