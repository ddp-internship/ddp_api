<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void{
    Schema::table('jurnal', function (Blueprint $table) {
        // Menambah kolom gambar setelah kolom link
        $table->string('gambar')->nullable()->after('link');
    });
}

    public function down(): void{
    Schema::table('jurnal', function (Blueprint $table) {
        $table->dropColumn('gambar');
    });
}
};
