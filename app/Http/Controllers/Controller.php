<?php

namespace App\Http\Controllers;

use App\Traits\ApiResponser;
use App\Traits\ApiMiddleware;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use App\Models\PhoneVerification;
use App\Models\User;
use App\Models\Store;
use Illuminate\Support\Str;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests, ApiResponser, ApiMiddleware;
    function OTPMiddleware($phone_no = null) {
        $request = $_POST ? $_POST : $_GET;
        dd($request);
        if(!isset($request['verification_code'])) {
            $this->sendOTP($phone_no ? $phone_no : auth()->user()->phone_no);
            exit;
        } else {
            $code = $request['verification_code'];
            $otp = PhoneVerification::where(['otp_code' => $code, 'is_expired' => 0, 'phone_no' => $phone_no ? $phone_no : auth()->user()->phone_no])->first();
            if($otp) {
                $otp->is_expired = 1;
                $otp->save();
                $user = User::where(['phone_no' => $phone_no ? $phone_no : auth()->user()->phone_no])->first();
                if($user) {
                    $user->remember_token = Str::random(64);
                    $user->save();
                }
                return $code;
            } else {
                print_r(json_encode([
                    'status' => 'failed',
                    'message' => 'Invalid OTP',
                    'data' => []
                ]));
                exit;
            }
        }
    }
    function verifyStoreAction($store_id) {
        $store = Store::find($store_id);
        if(!$store) {
            print_r(json_encode([
                'status' => 'failed',
                'message' => 'Invalid request',
                'data' => []
            ]));
            exit;
        }
    }
}
