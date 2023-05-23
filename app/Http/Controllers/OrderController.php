<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
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
        $orders = Order::where(['user_id' => Auth()->user()->id])->list();
        return $this->success([
            $orders
        ]);
    }

    // Create a new store
    public function store(Request $request)
    {
        // Validate the request data
        $validatedData = Validator::make($request->all(), [
            'total_price' => 'nullable|string',
            'shipping_address' => 'nullable|string',
            'shipping_charges' => 'nullable|string',
            'order_start_date' => 'nullable|string',
            'customer_name' => 'nullable|string',
            'phone_no' => 'nullable|string',
            'note' => 'nullable|string',
            'status' => 'nullable',
            'order_id' => 'required',
        ]);

        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        // Create a new Store model instance
        $order = new Order;
        
        foreach ($validatedData->validated() as $key => $value) {
            $order->$key = $value;
        }

        // Save the new Store instance to the database
        $order->save();
        return $this->success([
            $order
        ], 'Order was created successfully');
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
            'total_price' => 'nullable|string',
            'shipping_address' => 'nullable|string',
            'shipping_charges' => 'nullable|string',
            'order_start_date' => 'nullable|string',
            'customer_name' => 'nullable|string',
            'phone_no' => 'nullable|string',
            'note' => 'nullable|string',
            'status' => 'nullable',
            'order_id' => 'required',
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }

        // OTP verification enabled.
        // $this->OTPMiddleware(null, $request);

        // Create a new Store model instance
        $order = Order::find($request->order_id);
        $order->update($validatedData->validated());
        // Save the new Store instance to the database
        $order->save();
        return $this->success([
            $order
        ], 'Store was updated successfully');
    }

    // Get a single store by ID
    public function show(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        if (!$store) {
            return $this->error('Please complete your business profile.', 401);
        }
        $store = Order::find($request->order_id);
        return $this->success([
            $store
        ]);
    }

}
