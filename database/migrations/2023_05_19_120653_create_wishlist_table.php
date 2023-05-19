<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWishlistTable extends Migration
{
    public function up()
    {
        Schema::create('wishlist', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('lynk_id');
            $table->timestamps();

            // Define foreign key constraints
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('lynk_id')->references('id')->on('lynks');
        });

        Schema::table('users', function (Blueprint $table) {
            $table->string('account_type');
        });
    }

    public function down()
    {
        Schema::dropIfExists('wishlist');
    }
}
