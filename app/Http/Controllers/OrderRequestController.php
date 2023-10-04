<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderRequest;
use App\Models\ProductReq;
use App\Models\ProductRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class OrderRequestController extends Controller
{
    //
    function list(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        if (!$store) {
            return $this->error('Please complete your business profile.', 401);
        }
        $orders = OrderRequest::where(['store_id' => $store->id])
            ->with(['productRequests'])
            ->get();
        //dd($orders);
        return $this->success([$orders]);
    }
    function acceptedList(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();

        if (!$store) {
            return $this->error('Please complete your business profile.', 401);
        }
            $acceptedorders = OrderRequest::where(['store_id' => $store->id,'is_accepted'=>'accepted'])
            ->with(['productRequests'])
            ->get();
           // dd($acceptedorders);
            return $this->success([$acceptedorders]);


    }

    public function update(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        if (!$store) {
            return $this->store($request);
        }
        if ($request->has('is_accepted') && strcasecmp($request->input('is_accepted'), 'accepted') === 0) {
        // Validate the request data
        $validatedData = Validator::make($request->all(), [
            'full_name' => 'nullable|string',
            'phone_no' => 'nullable|string',
            'status' => 'nullable|string',
            'is_accepted' => 'nullable|string',
            'note' => 'nullable|string',
            'reason' => 'nullable',
            'order_id' => 'required',
            'payment' => 'required',
            'measurement' => 'nullable',
            'shipping_details' => 'required',
        ]);
        //  dd($validatedData);
        // PRICE, D PRICE, pname, alteration days
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        // OTP verification enabled.
        // $this->OTPMiddleware(null, $request);
        // Create a new Store model instance
        $order = OrderRequest::find($request->order_id);
        $orderId = $order->id;
        // array of data $productData = [];
        $order->update($validatedData->validated());
        $order->payment = $request->input('payment');
        $order->measurement = $request->input('measurement');
        $order->shipping_details = $request->input('shipping_details');
        $order->save();
        // Save the new Store instance to the database

        $validatedProductData = Validator::make($request->input('products'), [
            '*.id' => 'required', // Ensure each product has an ID
            '*.product_name' => 'nullable|string',
            '*.total_price' => 'nullable|string',
            '*.discount_price' => 'nullable|string',
            '*.alteration_days' => 'required',
        ]);

        // Check if the product data is valid
        if ($validatedProductData->fails()) {
            $message = $validatedProductData->errors()->first();
            return $this->error($message, 401);
        }

        // Update the associated 'product_request' records
        foreach ($request->input('products') as $productData) {
            $productId = $productData['id'];
            $productRequest = ProductRequest::where('id', $productId)
                ->where('order_request_id', $orderId)
                ->first();

            if ($productRequest) {
                $productRequest->update($productData);
            }
        }
        return $this->success([$order, $productRequest], 'Order Request was updated successfully');
}else{
    $order = OrderRequest::find($request->order_id);
    $orderId = $order->id;
    $order->is_accepted = $request->input('is_accepted');
    $order->reason = $request->input('reason');
    $order->save();
    return $this->success([$order], 'Order Request was updated successfully');
}

    }

    // Get a single store by ID
    public function show(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        if (!$store) {
            return $this->error('Please complete your business profile.', 401);
        }
        $store = OrderRequest::find($request->order_id);
        return $this->success([$store]);
    }
}
