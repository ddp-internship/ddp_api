<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Jalankan Perubahan
     */
    public function up(): void
    {
        Schema::table('testimoni', function (Blueprint $table) {
            // Menambah kolom is_tampil (0 = sembunyi, 1 = tampil)
            $table->boolean('is_tampil')->default(0)->after('gambar');
        });
    }

    /**
     * Batalkan Perubahan
     */
    public function down(): void
    {
        Schema::table('testimoni', function (Blueprint $table) {
            $table->dropColumn('is_tampil');
        });
    }
};