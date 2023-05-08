<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LynkProduct;
use App\Models\Lynk;
use App\Models\Asset;
use App\Models\Product;
use App\Models\Store;
use Illuminate\Support\Facades\Validator;

class LynkController extends Controller
{
    //
    function list(Request $request) {
        $store = Store::where(['user_id' => auth()->user()->id])->first();
        $lynks = Lynk::where(['lynks.store_id' => $store->id])->with('lynk_products')->join('products', 'products.id', 'product_id')->get();
        return $this->success([
            $lynks
        ]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'store_id' => 'required|integer',
            'exchange_limit' => 'required|integer',
            'pkg_width' => 'required|integer',
            'pkg_height' => 'required|integer',
            'pkg_length' => 'required|integer',
            'pkg_weight' => 'required|integer',
            'shipping_charges' => 'required|string',
            'products' => 'required'
        ]);
        if ($validator->fails()) {
            $message = $validator->errors()->first();
            return $this->error($message, 401);
        }
        $lynk = Lynk::create($validator->validated());
        $products = $validator->validated()['products'];
        $index = 0;
        foreach($products as $product) {
            $product['store_id'] = $validator->validated()['store_id'];
            if($request->file('products')[$index]['product_image']) {
                $storeLogoPath = $request->file('products')[$index]['product_image']->store('uploads');
                $asset = Asset::create(['url' => $storeLogoPath, 'type' => 'image']);
                $product['img_id'] = $asset->id;
            }
            $p = Product::create($product);
            LynkProduct::create(['lynk_id' => $lynk->id, 'product_id' => $p->id, 'status' => 1, 'note' => $product['note']]);
            $_products[] = $p;
            $index++;
        }
        // $validator->validated()['products']
        $lynk->products = $_products;
        return $this->success([
            $lynk
        ]);
    }

    public function show($id)
    {
        $lynk = Lynk::find($id);
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
        $lynk = Lynk::find($id);
        $lynk->update($validatedData->validated());
        return response()->json($lynk);
    }

}
