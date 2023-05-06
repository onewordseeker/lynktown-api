<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePhoneVerificationsTable extends Migration
{
    public function up()
    {
        Schema::create('phone_verifications', function (Blueprint $table) {
            $table->increments('id');
            $table->string('phone_no', 255)->nullable();
            $table->string('otp_code')->nullable();
            $table->boolean('is_expired')->default(false);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('phone_verifications');
    }
}
