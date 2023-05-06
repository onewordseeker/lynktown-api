<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Store;

class StoreController extends Controller
{
    //
    function list(Request $request) {
        $lynks = Store::where(['customer_id' => auth()->user()->id])->with('LynkProduct')->get();
        return $this->success([
            $lynks
        ]);
    }

    // Create a new store
    public function store(Request $request)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'store_logo' => 'required|image',
            'store_header_cover' => 'required|image',
            'brand_color' => 'required|string',
            'store_address' => 'required|string',
            'store_email' => 'required|email',
            'storephoneno' => 'required|string',
            'category' => 'required|string',
            'note' => 'nullable|string',
            'accepting_orders' => 'required|boolean',
        ]);

        // OTP verification enabled.
        $this->OTPMiddleware();

        // Create a new Store model instance
        $store = new Store;
        $store->user_id = auth()->user()->id;
        $store->brand_color = $validatedData['brand_color'];
        $store->store_address = $validatedData['store_address'];
        $store->store_email = $validatedData['store_email'];
        $store->storephoneno = $validatedData['storephoneno'];
        $store->category = $validatedData['category'];
        $store->note = $validatedData['note'];
        $store->accepting_orders = $validatedData['accepting_orders'];

        // Upload store logo image
        $storeLogoPath = $request->file('store_logo')->store('store_logos');
        $store->store_logo = $storeLogoPath;

        // Upload store header cover image
        $storeHeaderCoverPath = $request->file('store_header_cover')->store('store_header_covers');
        $store->store_header_cover = $storeHeaderCoverPath;

        // Save the new Store instance to the database
        $store->save();
        return $this->success([
            $store
        ], 'Store was created successfully');
    }

    // Update an existing store
    public function update(Request $request, $id)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'store_logo' => 'image',
            'store_header_cover' => 'image',
            'brand_color' => 'required|string',
            'store_address' => 'required|string',
            'store_email' => 'required|email',
            'storephoneno' => 'required|string',
            'category' => 'required|string',
            'note' => 'nullable|string',
            'accepting_orders' => 'required|boolean',
        ]);

        // OTP verification enabled.
        $this->OTPMiddleware();

        // Create a new Store model instance
        $store = Store::find($id);
        $store->brand_color = $validatedData['brand_color'];
        $store->store_address = $validatedData['store_address'];
        $store->store_email = $validatedData['store_email'];
        $store->storephoneno = $validatedData['storephoneno'];
        $store->category = $validatedData['category'];
        $store->note = $validatedData['note'];
        $store->accepting_orders = $validatedData['accepting_orders'];
        if($request->file('store_logo')) {
            // Upload store logo image
            $storeLogoPath = $request->file('store_logo')->store('store_logos');
            $store->store_logo = $storeLogoPath;
        }
        if($request->file('store_header_cover')) {
            // Upload store header cover image
            $storeHeaderCoverPath = $request->file('store_header_cover')->store('store_header_covers');
            $store->store_header_cover = $storeHeaderCoverPath;
        }
        // Save the new Store instance to the database
        $store->save();
        return $this->success([
            $store
        ], 'Store was updated successfully');
    }

    // Get a single store by ID
    public function show($id)
    {
        $store = Store::findOrFail($id);
        return $this->success([
            $store
        ]);
    }
}
