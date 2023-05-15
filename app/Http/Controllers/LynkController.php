<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LynkProduct;
use App\Models\Lynk;
use App\Models\Asset;
use App\Models\Product;
use App\Models\ProductImages;
use App\Models\Store;
use App\Models\RecordDetails;
use Illuminate\Support\Facades\Validator;

class LynkController extends Controller
{
    //
    function list(Request $request) {
        $store = Store::where(['user_id' => auth()->user()->id])->first();
        if(!$store) {
            return $this->error('You have no store yet. Please create one.', 401);
        }
        $this->validateRequst();
        $store = vendorStore();
        $lynks = Lynk::where(['lynks.store_id' => $store->id ])->with(['products.product.record', 'record', 'products.product.images.productImage'])->get();
        return $this->success([
            $lynks
        ]);
    }

    public function store(Request $request)
    {
        $this->validateRequst();
        $store = vendorStore();
        $this->verifyStoreAction($store->id);
        $validator = Validator::make($request->all(), [
            'exchange_limit' => 'string',
            'return_available' => 'string',
            'pkg_width' => 'nullable|string',
            'pkg_height' => 'nullable|string',
            'pkg_length' => 'nullable|string',
            'pkg_weight' => 'nullable|string',
            'shipping_charges' => 'nullable|string',
            'products' => 'required'
        ]);
        if ($validator->fails()) {
            $message = $validator->errors()->first();
            return $this->error($message, 401);
        }
        $store_data = $validator->validated();
        $store_data['store_id'] = $store->id;
        $lynk = Lynk::create($store_data);
        $products = $validator->validated()['products'];
        $index = 0;
        foreach($products as $product) {
            $product['store_id'] = $store_data['store_id'];
            $p = Product::create($product);
            RecordDetails::create(['product_id' => $p->id]);
            LynkProduct::create(['lynk_id' => $lynk->id, 'product_id' => $p->id, 'status' => 1]);
            if(isset($product['product_images'])) {
                foreach($product['product_images'] as $image) {
                    $asset = Asset::create(['url' => $image, 'type' => 'image']);
                    // $product['img_id'] = $asset->id;
                    ProductImages::create(['product_id' => $p->id, 'asset_id' => $asset->id]);
                }
                // $storeLogoPath = $request->file('products')[$index]['product_image']->store('uploads');
            }
            $_products[] = $p;
            $index++;
        }
        RecordDetails::create(['lynk_id' => $lynk->id]);
        // $validator->validated()['products']
        $lynk->products = $_products;
        return $this->success([
            $lynk
        ]);
    }

    public function show($id)
    {
        $this->validateRequst();
        $store = vendorStore();
        $this->verifyStoreAction($store->id);
        $lynk = Lynk::with('products.product')->find($id);
        return $this->success([
            $lynk
        ]);
    }

    public function update(Request $request)
    {
        $this->validateRequst();
        $store = vendorStore();
        $this->verifyStoreAction($store->id);
        $validatedData = Validator::make($request->all(), [
            'url' => 'sometimes|nullable|url',
            'exchange_limit' => 'string',
            'return_available' => 'string',
            'status' => 'sometimes|nullable',
            'pkg_width' => 'nullable|string',
            'pkg_height' => 'nullable|string',
            'pkg_length' => 'nullable|string',
            'pkg_weight' => 'nullable|string',
            'shipping_charges' => 'nullable|string',
            'id' => 'required'
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $lynk = Lynk::find($request->id);
        $lynk->update($validatedData->validated());
        return response()->json($lynk);
    }

}
