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
        Schema::table('lynk_products', function (Blueprint $table) {
            //
            $table->foreign('lynk_id')->references('id')->on('lynks')->onDelete('RESTRICT');
            $table->foreign('product_id')->references('id')->on('products')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('lynk_products', function (Blueprint $table) {
            //
        });
    }
};
