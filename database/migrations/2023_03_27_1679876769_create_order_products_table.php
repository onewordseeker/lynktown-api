<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderProductsTable extends Migration
{
    public function up()
    {
        Schema::create('order_products', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('order_id')->nullable()->unsigned();
		$table->integer('product_id')->nullable()->unsigned();
		$table->integer('quantity')->nullable();
		$table->float('price')->nullable();
		$table->float('discount_price')->nullable();
		$table->text('post_link')->nullable();
		$table->integer('img_id')->nullable()->unsigned();
		$table->text('name')->nullable();
		$table->text('size')->nullable();
		$table->integer('exchange_available')->default('1');
		$table->string('status',100)->nullable();
		$table->string('product_type',100)->nullable();
		$table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('order_products');
    }
}
