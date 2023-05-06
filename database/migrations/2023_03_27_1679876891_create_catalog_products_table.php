<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatalogProductsTable extends Migration
{
    public function up()
    {
        Schema::create('catalog_products', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('catalog_id')->nullable()->unsigned();
		$table->integer('product_id')->nullable()->unsigned();
		$table->string('status',200)->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('catalog_products');
    }
}