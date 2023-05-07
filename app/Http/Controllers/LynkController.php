<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Lynk;
use App\Models\LynkProduct;
use App\Models\Product;
use Illuminate\Support\Facades\Validator;

class LynkController extends Controller
{
    //
    function list(Request $request) {
        $lynks = Lynk::where(['customer_id' => auth()->user()->id])->with('LynkProduct')->get();
        return $this->success([
            $lynks
        ]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'store_id' => 'required|integer',
            'url' => 'required|url',
            'exchange_limit' => 'required|integer',
            'pkg_width' => 'required|integer',
            'pkg_height' => 'required|integer',
            'pkg_length' => 'required|integer',
            'pkg_weight' => 'required|integer',
            'shipping_charges' => 'required|string', // customer, vendor
            'products' => 'required'
        ]);
        if ($validator->fails()) {
            $message = $validator->errors()->first();
            return $this->error($message, 401);
        }
        
        $lynk = Lynk::create($validator);
        $products = $request->input('products');
        $_products = Product::create($products);
        $lynk->products = $_products;
        return $this->success([
            $lynk
        ]);
    }

    public function show($id)
    {
        $lynk = Lynk::findOrFail($id);
        return $this->success([
            $lynk
        ]);
    }

    public function update(Request $request, $id)
    {
       
        $validatedData = Validator::make($request->all(), [
            'url' => 'sometimes|required|url',
            'exchange_limit' => 'sometimes|required|integer',
            'status' => 'sometimes|required|in:active,inactive',
            'pkg_width' => 'required|integer',
            'pkg_height' => 'required|integer',
            'pkg_length' => 'required|integer',
            'pkg_weight' => 'required|integer',
            'shipping_charges' => 'required|string'
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $lynk = Lynk::findOrFail($id);
        $lynk->update($validatedData->validated());
        return response()->json($lynk);
    }

}
