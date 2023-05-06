<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDeliverySettingsTable extends Migration
{
    public function up()
    {
        Schema::create('delivery_settings', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('store_id')->nullable()->unsigned();
		$table->float('in_bangalore_delivery_fee')->nullable();
		$table->float('out_bangalore_delivery_fee')->nullable();
		$table->float('per_km')->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('delivery_settings');
    }
}