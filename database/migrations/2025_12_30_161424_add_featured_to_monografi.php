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
    Schema::table('monografi', function (Blueprint $table) {
        $table->boolean('is_featured')->default(0)->after('link'); // 0: Biasa, 1: Tampil di Home
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('monografi', function (Blueprint $table) {
            //
        });
    }
};
