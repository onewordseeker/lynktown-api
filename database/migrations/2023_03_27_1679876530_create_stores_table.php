<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStoresTable extends Migration
{
    public function up()
    {
        Schema::create('stores', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('user_id')->nullable()->unsigned();
		$table->integer('store_uid')->nullable()->unsigned();
		$table->integer('store_logo')->nullable()->unsigned();
		$table->integer('store_header_cover')->nullable()->unsigned();
		$table->string('brand_color',20)->nullable();
		$table->text('store_address')->nullable();
		$table->text('store_email')->nullable();
		$table->text('storephoneno')->nullable();
		$table->text('category')->nullable();
		$table->text('status')->nullable();
		$table->text('note')->nullable();
		$table->integer('accepting_orders')->default('1');
		$table->integer('deleted')->default('0');
		$table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('stores');
    }
}