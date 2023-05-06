<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLynkProductsTable extends Migration
{
    public function up()
    {
        Schema::create('lynk_products', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('lynk_id')->nullable()->unsigned();
		$table->integer('product_id')->nullable()->unsigned();
		$table->text('status')->nullable();
		$table->text('note')->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('lynk_products');
    }
}