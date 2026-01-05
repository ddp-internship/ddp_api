<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Buat Tabel Baru
     */
    public function up(): void
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->string('nama_lengkap');
            $table->string('email');
            $table->string('subjek');
            $table->text('pesan');
            $table->timestamps(); // Ini akan otomatis membuat kolom created_at & updated_at
        });
    }

    /**
     * Hapus Tabel
     */
    public function down(): void
    {
        Schema::dropIfExists('contacts');
    }
};