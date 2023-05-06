<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;

class UserController extends Controller
{
    //

    function profileEdit(Request $request) {
        $validator = Validator::make($request->all(), [
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
        ]);
        if ($validator->fails()) {
            return $this->error($validator->messages(), 401);
        }
        $user = auth()->user();
        $_user = User::find($user->id);
        $_user->first_name = $request->first_name;
        $_user->last_name = $request->last_name;
        $_user->save();
        return $this->success([
            $_user
        ]);
    }
    
}
