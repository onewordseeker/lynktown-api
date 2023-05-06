<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatalogSectionProductsTable extends Migration
{
    public function up()
    {
        Schema::create('catalog_section_products', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('product_id')->nullable()->unsigned();
		$table->integer('section_id')->nullable()->unsigned();
		$table->integer('catalog_id')->nullable()->unsigned();
		$table->string('status',200)->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('catalog_section_products');
    }
}