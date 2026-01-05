<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('capaiandata', function (Blueprint $table) {
            $table->id();
            $table->string('desa');
            $table->string('dusun');
            $table->string('rw');
            $table->string('kelurahan');
            $table->string('bangunan');
            $table->string('kk');
            $table->string('jiwa');
            $table->string('laki');
            $table->string('perempuan');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('capaiandata');
    }
};