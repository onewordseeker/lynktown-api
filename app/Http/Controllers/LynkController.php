<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LynkProduct;
use App\Models\Lynk;
use App\Models\Asset;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImages;
use App\Models\Store;
use App\Models\RecordDetails;
use App\Models\ProductCategories;
use Illuminate\Support\Facades\Validator;

class LynkController extends Controller
{
    //
    function list(Request $request)
    {
        $store = Store::where(['user_id' => auth()->user()->id])->first();
        //dd($store);
        if (!$store) {
            return $this->error('You have no store yet. Please create one.', 401);
        }
        $this->validateRequest();
        $store = vendorStore();
        $lynks = Lynk::where(['lynks.store_id' => $store->id])
            ->with(['products.product.record', 'record', 'products.product.images.productImage', 'products.product.categories.productCategory'])
            ->orderBy('created_at', 'desc')
            ->paginate(20);
        return $this->success([$lynks]);
    }

    public function store(Request $request)
    {
        $this->validateRequest();
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
            'products' => 'required',
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
        $productKeysData = [];
        foreach ($products as $product) {
            $product['store_id'] = $store_data['store_id'];
            $p = Product::create($product);
            foreach($p->getFillable() as $key) {
                $productKeysData[$key] = $p->$key;
            }
            RecordDetails::create(['product_id' => $p->id]);
            LynkProduct::create(['lynk_id' => $lynk->id, 'product_id' => $p->id, 'status' => 1]);
            if (isset($product['product_images'])) {
                foreach ($product['product_images'] as $image) {
                    $asset = Asset::create(['url' => $image, 'type' => 'image']);
                    // $product['img_id'] = $asset->id;
                    ProductImages::create(['product_id' => $p->id, 'asset_id' => $asset->id]);
                }
                // $storeLogoPath = $request->file('products')[$index]['product_image']->store('uploads');
            }
            if (isset($product['product_categories'])) {
                $categories = is_array($product['product_categories']) ? $product['product_categories'] : json_decode($product['product_categories']);
                if(is_array($categories)) {
                    foreach ($categories as $category_id) {
                        ProductCategories::create(['product_id' => $p->id, 'category_id' => $category_id]);
                        $category = Category::find($category_id);
                        $productKeysData['categories'][] = $category;
                    }
                }
            }
            //  dd($category);
            $_products[] = $productKeysData;
            $index++;
        }
        RecordDetails::create(['lynk_id' => $lynk->id]);
        // $validator->validated()['products']
        $lynk->products = $_products;
        return $this->success([$lynk]);
    }

    public function show($id)
    {
        $this->validateRequest();
        $store = vendorStore();
        $this->verifyStoreAction($store->id);
        $lynk = Lynk::with('products.product', 'orders')->find($id);
        // looping for total orders and total earnings
        $totalSubtotalPrice = $lynk->orders->sum('subtotal_price');
        $lynk->total_subtotal_price = $totalSubtotalPrice;
        return $this->success([$lynk]);
    }

    public function update(Request $request)
    {
        $this->validateRequest();
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
            'products' => 'required',
            'id' => 'required',
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $lynk = Lynk::find($request->id);
        $lynk->update($validatedData->validated());
        $products = $validatedData->validated()['products'];
        $index = 0;
        $productKeysData = [];
        foreach ($products as $productData) {
            $product = Product::find($productData['id']);
            foreach( $product->getFillable() as $key) {
                $productKeysData[$key] = $product->$key;
            }
            if ($product) {
                $product->update($productData);

                if (isset($productData['product_images'])) {
                    foreach ($productData['product_images'] as $image) {
                        $asset = Asset::create(['url' => $image, 'type' => 'image']);
                        ProductImages::create(['product_id' => $product->id, 'asset_id' => $asset->id]);
                    }
                }

                if (isset($productData['product_categories'])) {
                    $categories = is_array($product['product_categories']) ? $product['product_categories'] : json_decode($product['product_categories']);
                    if(is_array($categories)) {
                    foreach ($productData['product_categories'] as $category_id) {
                        ProductCategories::create(['product_id' => $product->id, 'category_id' => $category_id]);
                        $category = Category::find($category_id);
                        $productKeysData['categories'][] = $category;
                    }
                }
                }

                $_products[] = $product;
            }

            $index++;
        }
        return response()->json($lynk);
    }
    function delete(Request $request)
    {
        $lynk = Lynk::with('products')->find($request->id);
        if (!$lynk) {
            return response()->json(['message' => 'Lynk not found'], 404);
        }
        $lynk->delete();
        return response()->json(['message' => 'Lynk deleted Successfully']);
    }
}
