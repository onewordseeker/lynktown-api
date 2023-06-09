<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLynksTable extends Migration
{
    public function up()
    {
        Schema::create('lynks', function (Blueprint $table) {

            $table->increments('id');
            $table->integer('store_id')->nullable()->unsigned();
            $table->text('url')->nullable();
            $table->integer('pkg_height')->nullable()->unsigned();
            $table->integer('pkg_width')->nullable()->unsigned();
            $table->integer('pkg_length')->nullable()->unsigned();
            $table->integer('pkg_weight')->nullable()->unsigned();
            $table->string('shipping_charges')->nullable();
            $table->integer('exchange_limit')->nullable();
            $table->text('status')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('lynks');
    }
}
