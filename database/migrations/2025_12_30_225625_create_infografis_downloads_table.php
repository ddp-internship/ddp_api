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
    Schema::create('infografis_downloads', function (Blueprint $table) {
        $table->id();
        $table->foreignId('infografis_id')->constrained('infografis')->onDelete('cascade');
        $table->string('email');
        $table->string('instansi');
        $table->text('keperluan');
        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('infografis_downloads');
    }
};
