<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
    Schema::table('testimoni', function (Blueprint $table) {
        // Tambahkan kolom tanggal setelah kolom jabatan
        $table->string('tanggal')->nullable()->after('jabatan');
    });
}

    public function down(): void
    {
    Schema::table('testimoni', function (Blueprint $table) {
        $table->dropColumn('tanggal');
    });
}
};
