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
        Schema::table('exchange_requests', function (Blueprint $table) {
            //
            $table->foreign('product_id')->references('id')->on('order_products')->onDelete('RESTRICT');
            $table->foreign('store_id')->references('id')->on('stores')->onDelete('RESTRICT');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('RESTRICT');
            $table->foreign('photo_id')->references('id')->on('assets')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('exchange_requests', function (Blueprint $table) {
            //
        });
    }
};
