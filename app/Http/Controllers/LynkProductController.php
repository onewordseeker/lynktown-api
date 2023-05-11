<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LynkProduct;
use Illuminate\Support\Facades\Validator;

class LynkProductController extends Controller
{
    //
    function list(Request $request)
    {
        $lynks = LynkProduct::where(['lynk_id' => $request->lynk_id])->with('Product')->get();
        return $this->success([
            $lynks
        ]);
    }

    public function store(Request $request)
    {
        $validatedData = Validator::make($request->all(), [
            'store_id' => 'required|string',
            'url' => 'required|url',
            'exchange_limit' => 'required|string'
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $lynk = LynkProduct::create($validatedData->validated());
        return $this->success([
            $lynk
        ]);
    }

    public function show($id)
    {
        $lynk = LynkProduct::find($id);
        return $this->success([
            $lynk
        ]);
    }

    public function update(Request $request, $id)
    {
        $validatedData = Validator::make($request->all(), [
            'url' => 'sometimes|required|url',
            'exchange_limit' => 'sometimes|required|string',
            'status' => 'sometimes|required|in:active,inactive'
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }

        $lynk = LynkProduct::find($id);
        $lynk->update($validatedData->validated());
        return response()->json($lynk);
    }
}
