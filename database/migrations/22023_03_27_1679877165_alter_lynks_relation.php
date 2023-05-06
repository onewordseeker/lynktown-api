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
        Schema::table('lynks', function (Blueprint $table) {
            //
            $table->foreign('customer_id')->references('id')->on('users')->onDelete('RESTRICT');
            $table->foreign('store_id')->references('id')->on('stores')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('lynks', function (Blueprint $table) {
            //
        });
    }
};
