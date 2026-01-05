<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void {
    Schema::create('monografi', function (Blueprint $table) {
        $table->id();
        $table->string('desa');
        $table->string('kecamatan');
        $table->string('kota');
        $table->string('provinsi');
        $table->string('tahun');
        $table->text('ringkasan')->nullable();
        $table->string('gambar')->nullable();
        $table->string('link')->nullable(); // Link Google Drive
        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('monografi');
    }
};
