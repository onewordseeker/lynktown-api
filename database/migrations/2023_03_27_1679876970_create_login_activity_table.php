<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLoginActivityTable extends Migration
{
    public function up()
    {
        Schema::create('login_activity', function (Blueprint $table) {

		$table->increments('id');
		$table->string('ip_address',200)->nullable();
		$table->integer('user_id')->nullable()->unsigned();
		$table->text('device_info')->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('login_activity');
    }
}