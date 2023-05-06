<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBusinessSettingsTable extends Migration
{
    public function up()
    {
        Schema::create('business_settings', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('user_id')->nullable()->unsigned();
		$table->string('business_name',200)->nullable();
		$table->string('phone_no',200)->nullable();
		$table->string('email',200)->nullable();
		$table->string('whatsapp',200)->nullable();
		$table->text('website')->nullable();
		$table->text('instagram')->nullable();
		$table->text('gst_id')->nullable();
		$table->text('bankaccno')->nullable();
		$table->text('holder_name')->nullable();
		$table->text('ifsc_code')->nullable();
		$table->text('bank_name')->nullable();
		$table->text('branch')->nullable();
		$table->text('pancardno')->nullable();
		$table->text('house_no')->nullable();
		$table->text('address')->nullable();
		$table->text('city')->nullable();
		$table->text('pincode')->nullable();
		$table->text('state')->nullable();
		$table->text('locality')->nullable();
		$table->text('status')->nullable();
		$table->integer('store_logo')->nullable()->unsigned();
		$table->integer('store_header_cover')->nullable()->unsigned();
		$table->string('brand_color',20)->nullable();
		$table->text('note')->nullable();
		$table->integer('accepting_orders')->default('1');
		$table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('business_settings');
    }
}
