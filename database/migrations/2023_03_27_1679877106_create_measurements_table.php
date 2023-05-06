<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMeasurementsTable extends Migration
{
    public function up()
    {
        Schema::create('measurements', function (Blueprint $table) {

		$table->increments('id');
		$table->integer('user_id')->nullable()->unsigned();
		$table->string('fitting',20)->nullable();
		$table->string('gender',20)->nullable();
		$table->text('back')->nullable();
		$table->text('front')->nullable();
		$table->text('ankle')->nullable();
		$table->text('calf')->nullable();
		$table->text('full_length')->nullable();
		$table->text('hip_round')->nullable();
		$table->text('inseam')->nullable();
		$table->text('thigh')->nullable();
		$table->text('waist')->nullable();
		$table->text('arm_hole')->nullable();
		$table->text('chest')->nullable();
		$table->text('neck')->nullable();
		$table->text('shoulder')->nullable();
		$table->text('sleeve_length')->nullable();
		$table->text('wrist')->nullable();
		$table->text('size')->nullable();
		$table->timestamps();

        });
    }

    public function down()
    {
        Schema::dropIfExists('measurements');
    }
}