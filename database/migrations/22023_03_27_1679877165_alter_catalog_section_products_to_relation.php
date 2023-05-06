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
        Schema::table('catalog_section_products', function (Blueprint $table) {
            //
            $table->foreign('product_id')->references('id')->on('order_products')->onDelete('RESTRICT');
            $table->foreign('section_id')->references('id')->on('catalogs_sections')->onDelete('RESTRICT');
            $table->foreign('catalog_id')->references('id')->on('catalogs')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('catalog_section_products', function (Blueprint $table) {
            //
        });
    }
};
