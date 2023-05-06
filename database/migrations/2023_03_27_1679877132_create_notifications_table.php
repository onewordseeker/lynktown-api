<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNotificationsTable extends Migration
{
    public function up()
    {
        Schema::create('notifications', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('user_id')->nullable()->unsigned();
		$table->text('message')->nullable();
		$table->string('status')->nullable();
		$table->integer('is_read')->default('0');
		$table->string('sent_to',20)->nullable();
        $table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('notifications');
    }
}