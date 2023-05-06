<?php

namespace App\Traits;

use Carbon\Carbon;
use App\Models\PhoneVerification;

/*
|--------------------------------------------------------------------------
| Api Responser Trait
|--------------------------------------------------------------------------
|
| This trait will be used for any response we sent to clients.
|
*/

trait ApiMiddleware
{
	/**
     * Make OTP request.
     *
     * @param  array|string  $phone_no
     * @param  int|null  $code
     * @return \Illuminate\Http\JsonResponse
     */
	protected function sendOTP($phone_no)
	{
		$code = $this->generateUniqueCode($phone_no);
		print_r(json_encode([
			'status' => 'Success',
			'message' => 'OTP sent to '.$phone_no,
			'data' => []
		]));
		exit;
	}

	function generateUniqueCode($phone_no) {
		// Generate a unique 6 digit code
		$code = str_pad(mt_rand(1, 999999), 6, '0', STR_PAD_LEFT);

		// Check if the code already exists in the database
		while (PhoneVerification::where('otp_code', $code)->exists()) {
			$code = str_pad(mt_rand(1, 999999), 6, '0', STR_PAD_LEFT);
		}

		// Save the code to the database
		$phoneVerification = new PhoneVerification();
		$phoneVerification->phone_no = $phone_no;
		$phoneVerification->otp_code = $code;
		$phoneVerification->save();
		return $code;
	}

}