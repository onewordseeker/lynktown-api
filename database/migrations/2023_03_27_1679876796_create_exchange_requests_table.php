<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExchangeRequestsTable extends Migration
{
    public function up()
    {
        Schema::create('exchange_requests', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('order_id')->nullable()->unsigned();
		$table->integer('store_id')->nullable()->unsigned();
		$table->integer('product_id')->nullable()->unsigned();
		$table->integer('business_id')->nullable()->unsigned();
		$table->integer('user_id')->nullable()->unsigned();
		$table->text('reason')->nullable();
		$table->text('description')->nullable();
		$table->integer('photo_id')->nullable()->unsigned();
		$table->string('status',200)->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('exchange_requests');
    }
}
