<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Store;
use App\Models\Asset;
use Illuminate\Support\Facades\Validator;

class StoreController extends Controller
{
    //
    function list(Request $request) {
        $lynks = Store::where(['user_id' => auth()->user()->id])->with(['logo', 'cover'])->get();
        return $this->success([
            $lynks
        ]);
    }

    // Create a new store
    public function store(Request $request)
    {
        // Validate the request data
        
        $validatedData = Validator::make($request->all(), [
            'store_logo' => 'required|string',
            'store_header_cover' => 'required|string',
            'brand_color' => 'required|string',
            'store_address' => 'required|string',
            'store_email' => 'required|email',
            'storephoneno' => 'required|string',
            'category' => 'required|string',
            'store_uid' => 'required|string',
            'note' => 'nullable|string',
            'accepting_orders' => 'required|boolean',
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $_store = Store::where(['store_uid' => $request->store_uid])->first();
        if($_store) {
            return $this->error('Store UID must be unique.', 401);
        }
        // OTP verification enabled.
        $this->OTPMiddleware();

        // Create a new Store model instance
        $store = new Store;
        $store->user_id = auth()->user()->id;
        $store->brand_color = $validatedData->validated()['brand_color'];
        $store->store_address = $validatedData->validated()['store_address'];
        $store->store_email = $validatedData->validated()['store_email'];
        $store->storephoneno = $validatedData->validated()['storephoneno'];
        $store->category = $validatedData->validated()['category'];
        $store->store_uid = $validatedData->validated()['store_uid'];
        $store->note = $validatedData->validated()['note'];
        $store->accepting_orders = $validatedData->validated()['accepting_orders'];

        // Upload store logo image
        if(isset($request->store_logo)) {
            // $storeLogoPath = $request->file('store_logo')->store('uploads');
            $asset = Asset::create(['url' => $request->store_logo, 'type' => 'image']);
            $product['img_id'] = $asset->id;
            $store->store_logo = $asset->id;
        }
        if(isset($request->store_header_cover)) {
            // $storeLogoPath = $request->file('store_logo')->store('uploads');
            $asset = Asset::create(['url' => $request->store_header_cover, 'type' => 'image']);
            $product['img_id'] = $asset->id;
            $store->store_header_cover = $asset->id;
        }
        // Upload store header cover image
        // $storeHeaderCoverPath = $request->file('store_header_cover')->store('uploads');
        // $cover = Asset::create(['url' => $storeHeaderCoverPath, 'type' => 'image']);
        // $store->store_header_cover = $cover->id;

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
        $validatedData = Validator::make($request->all(), [
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
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }

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
        $store = Store::with(['logo', 'cover'])->find($id);
        return $this->success([
            $store
        ]);
    }

    public function stats($id)
    {
        $store = Store::with(['catalogs'])->find($id);
        return $this->success([
            $store
        ]);
    }

    
}
