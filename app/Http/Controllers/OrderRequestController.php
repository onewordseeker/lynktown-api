<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderRequest;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    //
    function list(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        if (!$store) {
            return $this->error('Please complete your business profile.', 401);
        }
        $orders = OrderRequest::where(['store_id' => $store->id])->get();
        return $this->success([
            $orders
        ]);
    }

    // Update an existing store
    public function update(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        if (!$store) {
            return $this->store($request);
        }
        // Validate the request data
        $validatedData = Validator::make($request->all(), [
            'full_name' => 'nullable|string',
            'phone_no' => 'nullable|string',
            'status' => 'nullable|string',
            'note' => 'nullable|string',
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }

        // OTP verification enabled.
        // $this->OTPMiddleware(null, $request);

        // Create a new Store model instance
        $order = OrderRequest::find($request->order_id);
        $order->update($validatedData->validated());
        // Save the new Store instance to the database
        $order->save();
        return $this->success([
            $order
        ], 'Order Request was updated successfully');
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
        return $this->success([
            $store
        ]);
    }

}
