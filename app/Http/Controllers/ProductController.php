<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\CatalogProduct;
use App\Models\Catalog;
use App\Models\Asset;
use App\Models\Store;
use App\Models\ProductImages;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
     //
     function list(Request $request) {
        $this->validateRequst();
        $store = vendorStore();
        $lynks = Product::where(['store_id' => $store->id])->with(['cover'])->get();
        return $this->success([
            $lynks
        ]);
    }

    // Create a new store
    public function store(Request $request)
    {
        $this->validateRequst();
        // Validate the request data
        $validatedData = $this->verifyData($request);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $result = $this->create($request, $validatedData);
        if(!$result) {
            return $this->error('Product could not created', 401);
        }
        return $this->success([
            $result
        ], 'Product was created successfully');
    }

    public function addToCatalog(Request $request) {
        $this->validateRequst();

        $store = Store::where(['user_id' => auth()->user()->id])->first();
        if($store) {
            return $this->error('Product could not updated', 401);
        }
        $validatedData = $this->verifyData($request);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $c_p = Catalog::where(['id' => $request->catalog_id])->first();
        if(!$c_p) {
            return $this->error('Invalid catalog selected', 401);
        }
        $product = $this->create($request, $validatedData);
        if(!$product) {
            return $this->error('Product could not created', 401);
        }
        CatalogProduct::create([
            'catalog_id' => $request->catalog_id,
            'product_id' => $product->id,
            'status' => 1
        ]);
        return $this->success([
            $product
        ], 'Product was created successfully');
    }

    public function verifyData($request) {
        $validatedData = Validator::make($request->all(), [
            'images' => 'required|string',
            'quantity' => 'required|integer',
            'price' => 'required|string',
            'discount_price' => 'required|string',
            'name' => 'required|string',
            'size' => 'required|string',
            'exchange_available' => 'required|integer',
            'product_type' => 'required|string',
        ]);
        return $validatedData;
    }

    public function create(Request $request,  $validatedData) {
        $store = vendorStore();
          // Validate the request data
        // Create a new Store model instance
        $create = new Product;
        $create->store_id = $store->id;
        $create->quantity = $validatedData->validated()['quantity'];
        $create->price = $validatedData->validated()['price'];
        $create->discount_price = $validatedData->validated()['discount_price'];
        $create->name = $validatedData->validated()['name'];
        $create->size = $validatedData->validated()['size'];
        $create->exchange_available = $validatedData->validated()['exchange_available'];
        $create->product_type = $validatedData->validated()['product_type'];

        // OTP verification enabled.
        // $this->OTPMiddleware();
        
        // Save the new Store instance to the database
        $create->save();
        if(isset($product['images'])) {
            foreach($product['images'] as $image) {
                $asset = Asset::create(['url' => $image, 'type' => 'image']);
                // $product['img_id'] = $asset->id;
                ProductImages::create(['product_id' => $create->id, 'asset_id' => $asset->id]);
            }
            // $storeLogoPath = $request->file('products')[$index]['product_image']->store('uploads');
        }
        return $create;
    }

    // Update an existing store
    public function update(Request $request)
    {
        $store = Store::where(['user_id' => auth()->user()->id])->first();
        if($store) {
            return $this->error('Product could not updated', 401);
        }
        // Validate the request data
        $validatedData = Validator::make($request->all(), [
            'quantity' => 'required|integer',
            'price' => 'required|string',
            'discount_price' => 'required|string',
            'name' => 'required|string',
            'size' => 'required|string',
            'exchange_available' => 'required|integer',
            'product_type' => 'required|string',
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $update = Product::find($validatedData->validated()['store_id']);
        if(!$update) {
            return $this->error('Invalid store selected', 401);
        }

        // OTP verification enabled.
        $this->OTPMiddleware(null, $request);

        // Create a new Store model instance
        $update->quantity = $validatedData->validated()['quantity'];
        $update->price = $validatedData->validated()['price'];
        $update->discount_price = $validatedData->validated()['discount_price'];
        $update->name = $validatedData->validated()['name'];
        $update->size = $validatedData->validated()['size'];
        $update->exchange_available = $validatedData->validated()['exchange_available'];
        $update->product_type = $validatedData->validated()['product_type'];

        if(isset($product['images'])) {
            foreach($product['images'] as $image) {
                $asset = Asset::create(['url' => $image, 'type' => 'image']);
                // $product['img_id'] = $asset->id;
                ProductImages::create(['product_id' => $update->id, 'asset_id' => $asset->id]);
            }
            // $storeLogoPath = $request->file('products')[$index]['product_image']->store('uploads');
        }
        // Save the new Store instance to the database
        $update->save();
        return $this->success([
            $update
        ], 'Product was updated successfully');
    }

    // Get a single store by ID
    public function show($id)
    {
        $store = Product::with(['cover'])->find($id);
        return $this->success([
            $store
        ]);
    }
    
    public function deleteFromCatalog(Request $request) {
        $store = Store::where(['user_id' => auth()->user()->id])->first();
        if($store) {
            return $this->error('Product could not removed', 401);
        }
        $product = CatalogProduct::where(['product_id' => $request->product_id, 'store_id' => $store->store_id])->get();
        if($product) {
            $product->each->delete();
            return $this->success([
               Product::where(['store_id' => $request->store_id])->with(['cover'])->get()
            ], 'Product removed from catalog');
        } else {
            return $this->error('Product could not removed', 401);
        }
    }
}
