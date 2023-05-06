<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderActivityTable extends Migration
{
    public function up()
    {
        Schema::create('order_activity', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('order_id')->nullable()->unsigned();
		$table->string('status',200)->nullable();
		$table->text('note')->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('order_activity');
    }
}