<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Lynk;
use App\Models\Order;
use App\Models\Store;
use App\Models\Follow;
use App\Models\Product;
use App\Models\Wishlist;
use App\Models\OrderProduct;
use App\Models\Measurement;
use App\Models\OrderRequest;
use App\Models\ProductRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CustomerController extends Controller
{
    public function feed(Request $request)
    {
        $this->validateRequest();

        $lynks = Lynk::inRandomOrder()->paginate(10);

        $lynks->pluck('store');

        return $this->success([
            'lynks' => $lynks,
        ]);
    }

    public function lynk_products($id)
    {
        $this->validateRequest();

        $lynk = Lynk::findOrFail($id);
        $product_ids = $lynk->products->pluck('product_id')->toArray();
        $products = Product::whereIn('id', $product_ids)->get();

        return $this->success([
            $lynk,
            $products
        ]);
    }

    public function toggleWishlist(Request $request)
    {
        try {
            $this->validateRequest();

            $userId = $request->user()->id;
            $lynkId = $request->input('lynk_id');

            $wishlistItem = Wishlist::where('user_id', $userId)
                ->where('lynk_id', $lynkId)
                ->first();

            if ($wishlistItem) {
                $wishlistItem->delete();
                $message = 'Item removed from wishlist.';
            } else {
                Wishlist::create([
                    'user_id' => $userId,
                    'lynk_id' => $lynkId,
                    'store_id' => $request->input('store_id'),
                ]);
                $message = 'Item added to wishlist.';
            }

            return response()->json(['message' => $message], 200);
        } catch (\Throwable $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    // Request data for following method to put in postman
    //     {
    //     "user_id": 10,
    //     "store_id": 10,
    //     "lynk_id": 97,
    //     "shipping_address": "123 Street, City",
    //     "shipping_charges": 10,
    //     "order_start_date": "2023-05-01",
    //     "phone_no": "1234567890",
    //     "note": "Sample note",
    //     "status": "pending",
    //     "products": [
    //         {
    //             "product_id": 59,
    //             "quantity": 2,
    //             "size": "L"

    //         },
    //         {
    //             "product_id": 60,
    //             "quantity": 1,
    //             "size": "M"

    //         }
    //     ]
    // }

    public function createOrder(Request $request)
    {
        try {
            $this->validateRequest();

            $userId = $request->input('user_id');
            $storeId = $request->input('store_id');
            $lynkId = $request->input('lynk_id');
            $shippingAddress = $request->input('shipping_address');
            $shippingCharges = $request->input('shipping_charges');
            $orderStartDate = $request->input('order_start_date');
            $phoneNo = $request->input('phone_no');
            $note = $request->input('note');
            $status = $request->input('status');
            $products = $request->input('products');

            $user = User::findOrFail($userId);
            $store = Store::findOrFail($storeId);
            $lynk = Lynk::findOrFail($lynkId);

            // Calculate total price from product prices and quantities
            $totalPrice = 0;
            $order = new Order();
            foreach ($products as $product) {
                $productId = $product['product_id'];
                $quantity = $product['quantity'];
                $size = $product['size'];

                $productPrice = Product::where('id', $productId)->value('price');
                $subtotalPrice = $productPrice * $quantity;
                $totalPrice += $subtotalPrice;

                // Create order products
                $orderProduct = new OrderProduct();
                $orderProduct->order()->associate($order);
                $orderProduct->product_id = $productId;
                $orderProduct->quantity = $quantity;
                $orderProduct->price = $productPrice;
                $orderProduct->name = Product::where('id', $productId)->value('name');
                $orderProduct->size = $size;
                // Set other fields as needed
                $orderProduct->save();


                // Store the newly created order product ID
                $orderProductIds[] = $orderProduct->id;
            }

            // Check if passed product IDs exist in the lynk
            $lynkProducts = $lynk->products->pluck('product_id')->toArray();
            $requestedProductIds = collect($products)->pluck('product_id')->toArray();
            $missingProducts = array_diff($requestedProductIds, $lynkProducts);
            if (!empty($missingProducts)) {
                return response()->json(['error' => 'Some products are not available in the lynk'], 400);
            }

            // Set the customer name from the user
            $customerName = $user->name;

            $order->user()->associate($user);
            $order->store()->associate($store);
            $order->lynk()->associate($lynk);
            $order->total_price = $totalPrice;
            $order->subtotal_price = $totalPrice; // Assuming no discounts
            $order->shipping_address = $shippingAddress;
            $order->shipping_charges = $shippingCharges;
            $order->order_start_date = $orderStartDate;
            $order->customer_name = $customerName;
            $order->phone_no = $phoneNo;
            $order->note = $note;
            $order->status = $status;
            $order->save();

            // Update the order_id field for each order product
            foreach ($orderProductIds as $orderProductId) {
            $orderProduct = OrderProduct::find($orderProductId);
            $orderProduct->order_id = $order->id;
            $orderProduct->save();
            }

            return response()->json(['message' => 'Order created successfully'], 201);
        } catch (\Throwable $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function accessStore($id)
    {
        try {
            $this->validateRequest();

            $store = Store::findOrFail($id);
            $lynks = $store->lynks()->paginate(10);
            $products = $store->products()->paginate(10);
            $wishlistCount = $store->wishlist()->count();

            return response()->json([
                'store' => $store,
                'lynks' => $lynks,
                'products' => $products,
                'likes' => $wishlistCount,
            ], 200);
        } catch (\Throwable $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function toggleFollow(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'store_id' => 'required|exists:stores,id',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $userId = auth()->user()->id;
        $storeId = $request->input('store_id');

        try {
            $follow = Follow::where('user_id', $userId)
                ->where('store_id', $storeId)
                ->first();

            if ($follow) {
                $follow->delete();
                $message = 'Unfollowed the store successfully.';
            } else {
                Follow::create([
                    'user_id' => $userId,
                    'store_id' => $storeId,
                ]);
                $message = 'Followed the store successfully.';
            }

            return response()->json(['message' => $message], 200);
        } catch (\Throwable $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }


    // add measurement

    public function addMeasurement(Request $request, $orderId)
    {
        try {
            $this->validateRequest();
    
            $validatedData = $request->validate([
                'user_id' => 'required',
                'measurements' => 'required',
            ]);
    
            $userId = $validatedData['user_id'];
            $measurementData = $validatedData['measurements'];
           
    
            $user = User::findOrFail($userId);
            $measurement = $user->measurement()->create($measurementData);
            $measurementId = $measurement->id; // Get the ID of the newly created measurement
    
            // Update the order table with the measurement ID
            Order::where('id', $orderId)->update(['measurement_id' => $measurementId]);
    
            return response()->json(['message' => 'Measurement created successfully'], 201);
        } catch (\Throwable $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
    


    public function singleMeasurement($id)
    {
        // Retrieve the measurement ID from the form data
        $measurementId = Measurement::findOrFail($id);

        if ($measurementId) {
            // Measurement found, do something with it
            // For example, you can return it as a JSON response
            return response()->json($measurementId);
        } else {
            // Measurement not found
            return response()->json(['error' => 'Measurement not found'], 404);
        }
    }
    
    
        
        

        public function updateMeasurement(Request $request, Measurement $measurement)
        {
            $measurementData = $request->input('measurement');
        
            if ($measurement) {
                $measurement->update($measurementData);
        
                return response()->json(['message' => 'Measurement updated successfully']);
            } else {
                return response()->json(['error' => 'Measurement not found'], 404);
            }
        }


        public function getAllMeasurement()
        {
            $this->validateRequest();

            // return auth()->user()->id;

            $measurements = auth()->user()->measurement;
    
            return response()->json(['measurements' => $measurements]);
        }

           

        public function createCustomOrder(Request $request)
{
    try {
        $this->validateRequest();

        $userId = $request->input('user_id');
        $storeId = $request->input('store_id');
        $lynkId = $request->input('lynk_id');
        $shippingAddress = $request->input('shipping_address');
        $shippingCharges = $request->input('shipping_charges');
        $orderStartDate = $request->input('order_start_date');
        $phoneNo = $request->input('phone_no');
        $note = $request->input('note');
        $status = $request->input('status');
        $products = $request->input('products');
        $image_front = $request->input('front_image');
        $image_back = $request->input('back_image');

        $user = User::findOrFail($userId);
        $store = Store::findOrFail($storeId);
        $lynk = Lynk::findOrFail($lynkId);

        // Calculate total price from product prices and quantities
        $totalPrice = 0;
        $order = new Order();
        foreach ($products as $product) {
            $productId = $product['product_id'];
            $quantity = $product['quantity'];
            $size = $product['size'];

            $productPrice = Product::where('id', $productId)->value('price');
            $subtotalPrice = $productPrice * $quantity;
            $totalPrice += $subtotalPrice;

            // Create order products
            $orderProduct = new OrderProduct();
            $orderProduct->product_id = $productId;
            $orderProduct->quantity = $quantity;
            $orderProduct->price = $productPrice;
            $orderProduct->name = Product::where('id', $productId)->value('name');
            $orderProduct->size = $size;
            // Set other fields as needed
            $orderProduct->save();

            // Store the newly created order product ID
            $orderProductIds[] = $orderProduct->id;

        }

        // Check if passed product IDs exist in the lynk
        $lynkProducts = $lynk->products->pluck('product_id')->toArray();
        $requestedProductIds = collect($products)->pluck('product_id')->toArray();
        $missingProducts = array_diff($requestedProductIds, $lynkProducts);
        if (!empty($missingProducts)) {
            return response()->json(['error' => 'Some products are not available in the lynk'], 400);
        }

        // Set the customer name from the user
        $customerName = $user->name;

        $order->user()->associate($user);
        $order->store()->associate($store);
        $order->lynk()->associate($lynk);
        $order->total_price = $totalPrice;
        $order->subtotal_price = $totalPrice; // Assuming no discounts
        $order->shipping_address = $shippingAddress;
        $order->shipping_charges = $shippingCharges;
        $order->order_start_date = $orderStartDate;
        $order->customer_name = $customerName;
        $order->phone_no = $phoneNo;
        $order->note = $note;
        $order->status = $status;
        $order->save();

        // Update the order_id field for each order product
        foreach ($orderProductIds as $orderProductId) {
        $orderProduct = OrderProduct::find($orderProductId);
        $orderProduct->order_id = $order->id;
        $orderProduct->save();
        }

        return response()->json(['message' => 'Order created successfully'], 201);
    } catch (\Throwable $e) {
        return response()->json(['error' => $e->getMessage()], 500);
    }
}


public function requestorder(Request $request)
{
    try {
        $validatedData = $request->validate([
            'user_id' => 'required',
            'store_id' => 'required',
            'name' => 'required',
            'phone_no' => 'required',
            'note' => 'nullable',
            'business_id' => 'required',
            'status' => 'required',
            'products' => 'required',
            'products.*.product_image' => 'required',
            'products.*.product_url' => 'required',
        ]);

        $orderRequest = new OrderRequest();

        $orderRequest->user_id = $validatedData['user_id'];
        $orderRequest->store_id = $validatedData['store_id'];
        $orderRequest->full_name = $validatedData['name'];
        $orderRequest->business_id = $validatedData['business_id'];
        $orderRequest->status = $validatedData['status'];
        $orderRequest->note = $validatedData['note'];
        $orderRequest->phone_no = $validatedData['phone_no'];
        $orderRequest->save();

        foreach ($validatedData['products'] as $productData) {
            $productRequest = new ProductRequest();
            $productRequest->product_image = $productData['product_image'];
            $productRequest->product_link = $productData['product_url'];

            $productRequest->orderRequest()->associate($orderRequest);
            // $productRequest->order_request_id = $orderRequest->id; // Set the order_request_id

            $productRequest->save();
        }

        // Return a response indicating success
        return response()->json(['message' => 'Request order successful']);
    } catch (\Throwable $e) {
        // Handle validation errors
        return response()->json(['error' => $e->getMessage()], 500);
    }
}


}
