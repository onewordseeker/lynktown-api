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
}
