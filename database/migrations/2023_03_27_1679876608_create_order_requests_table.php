<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderRequestsTable extends Migration
{
    public function up()
    {
        Schema::create('order_requests', function (Blueprint $table) {
		$table->increments('id');
		$table->integer('user_id')->nullable()->unsigned();
		$table->integer('store_id')->nullable()->unsigned();
		$table->string('full_name',200)->nullable();
		$table->string('phone_no',200)->nullable();
		$table->integer('business_id')->nullable()->unsigned();
		$table->string('status',200)->nullable();
		$table->string('note',200)->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('order_requests');
    }
}
