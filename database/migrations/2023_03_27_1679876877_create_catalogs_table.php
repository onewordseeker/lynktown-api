<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatalogsTable extends Migration
{
    public function up()
    {
        Schema::create('catalogs', function (Blueprint $table) {

            $table->increments('id');
            $table->string('category', 200)->nullable();
            $table->integer('store_id')->nullable();
            $table->string('status', 200)->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('catalogs');
    }
}
