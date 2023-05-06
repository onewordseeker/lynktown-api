<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatalogsSectionsTable extends Migration
{
    public function up()
    {
        Schema::create('catalogs_sections', function (Blueprint $table) {

		$table->increments('id');
		$table->string('name',200)->nullable();
		$table->string('status',200)->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('catalogs_sections');
    }
}