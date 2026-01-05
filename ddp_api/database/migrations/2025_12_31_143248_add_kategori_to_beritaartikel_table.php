<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('beritaartikel', function (Blueprint $table) {
            // Menambah kolom kategori dengan pilihan Berita atau Artikel
            $table->enum('kategori', ['Berita', 'Artikel'])->default('Berita')->after('judul_artikel');
        });
    }

    public function down(): void
    {
        Schema::table('beritaartikel', function (Blueprint $table) {
            $table->dropColumn('kategori');
        });
    }
};