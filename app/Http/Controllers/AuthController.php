<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Traits\ApiResponser;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    use ApiResponser;
    public $user;
    public function __construct(Request $request)
    {
        // $token = $request->token;
        // $this->user = User::where(['token' => $token])->first();
        // dd($this->user);
    }
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'string|email|unique:users,email',
            'phone_no' => 'required|string|max:255|unique:users,phone_no',
            'account_type' => 'required' // vendor,customer,admin
        ]);
        if ($validator->fails()) {
            $message = $validator->errors()->first();
            return $this->error($message, 401);
        }

        // OTP verification enabled.
        $this->OTPMiddleware($request->phone_no);

        $user = User::create([
            'name' => $request->first_name,
            'email' => $request->email,
            'phone_no' => $request->phone_no,
            'password' => bcrypt('12345678'),
            'account_type' => $request->account_type, // admin, customer, fashion-designer, fashion-retailer
        ]);

        return $this->success([
            'token' => $user->createToken('API Token')->plainTextToken
        ]);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone_no' => 'required|string',
        ]);
        if ($validator->fails()) {
            $message = $validator->errors()->first();
            return $this->error($message, 401);
        }
        $data = [
            'password' => '12345678',
            'phone_no' => $validator->validated()['phone_no']
        ];
        if (!Auth::attempt($data)) {
            return $this->error('Credentials not match', 401);
        }
        if(auth()->user()->is_deleted) {
            return $this->error('Your account is deleted, Please talk to the tech team.', 401);
        }
        // OTP verification enabled.
        $this->OTPMiddleware();

        return $this->success([
            'token' => auth()->user()->createToken('API Token')->plainTextToken
        ]);
    }

    public function resetPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required|string|min:6|confirmed',
            'previous_password' => 'required|string|min:6|',
        ]);
        if ($validator->fails()) {
            return $this->error('Please check all the fields', 401);
        }
        if(Hash::check($request->previous_password, auth()->user()->password)) {
            $user = auth()->user();
            $_user = User::find($user->id);

            // OTP verification enabled for password update.
            $this->OTPMiddleware();

            $_user->password = bcrypt($request->password);
            $_user->save();
            return $this->success([
                $_user
            ], 'Password updated successfully');
        } else {
                return $this->error('Old password is invalid', 400, [
            ]);
        }
    }
    public function setNewPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required|string|min:6|confirmed',
        ]);
        if ($validator->fails()) {
            return $this->error('Please check all the fields', 401);
        }
        $_user = User::where(['remember_token' => $request->remember_token])->first();
        if(!$_user) {
            return $this->error('Please check all the fields', 401);
        }
        $_user->password = bcrypt($request->password);
        $_user->remember_token = null;
        $_user->save();
        return $this->success([
            
        ], 'Password updated successfully');
    }

    public function forgetPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone_no' => 'required|string',
        ]);
        if ($validator->fails()) {
            return $this->error('Please check all the fields', 401);
        }
        // OTP verification enabled.
        $this->OTPMiddleware($request->phone_no);
        $user = User::where(['phone_no' => $request->phone_no])->first();

        return $this->success([
            'remember_token' => $user->remember_token
        ], 'OTP verification was successful');
    }

    public function logout()
    {
        auth()->user()->tokens()->delete();

        return [
            'message' => 'Tokens Revoked'
        ];
    }

    public function deleteAccount()
    {
        // OTP verification enabled.
        $this->OTPMiddleware();

        $user = auth()->user();
        $_user = User::find($user->id);
        $_user->is_deleted = 1;
        $_user->save();
        return [
            'message' => 'Account deleted successfully'
        ];
    }

    public function test() {
        $this->OTPMiddleware();
        echo 123;
    }
}