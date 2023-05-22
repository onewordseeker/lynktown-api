<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Store;
use App\Models\Asset;
use App\Models\CatalogSectionProduct;
use App\Models\Lynk;
use App\Models\CatalogsSection;
use App\Models\Product;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class StoreController extends Controller
{
    //
    function list(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        $lynks = Store::where(['user_id' => Auth()->user()->id])->with(['user', 'logo', 'cover'])->first();
        return $this->success([
            $lynks
        ]);
    }

    // Create a new store
    public function store(Request $request)
    {
        // Validate the request data
        $validatedData = Validator::make($request->all(), [
            'store_logo' => 'string',
            'store_header_cover' => 'string',
            'brand_color' => 'string',
            'store_email' => 'email',
            'storephoneno' => 'string',
            'category' => 'string',
            'note' => 'nullable|string',
            'accepting_orders' => '',
            'user_id' => 'nullable|string',
            'business_name' => 'nullable|string',
            'whatsapp' => 'nullable|string',
            'website' => 'nullable|string',
            'instagram' => 'nullable',
            'gst_id' => 'nullable',
            'bankaccno' => 'nullable',
            'holder_name' => 'nullable',
            'ifsc_code' => 'nullable',
            'bank_name' => 'nullable',
            'branch' => 'nullable',
            'pancardno' => 'nullable',
            'house_no' => 'nullable',
            'store_address' => 'nullable',
            'city' => 'nullable',
            'pincode' => 'nullable',
            'state' => 'nullable',
            'locality' => 'nullable',
            'brand_color' => 'nullable',
        ]);

        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $store_uid = Str::random(12);
        do {
            $_store = Store::where(['store_uid' => $store_uid])->first();
        } while ($_store);
        // OTP verification enabled.
        // $this->OTPMiddleware(null, $request);

        // Create a new Store model instance
        $store = new Store;
        $store->user_id = auth()->user()->id;
        $store->store_uid = $store_uid;

        foreach ($validatedData->validated() as $key => $value) {
            if (($key == 'store_logo') || $key == 'store_header_cover')
                continue;
            $store->$key = $value;
        }
        // Upload store logo image
        if (isset($request->store_logo)) {
            // $storeLogoPath = $request->file('store_logo')->store('uploads');
            $asset = Asset::create(['url' => $request->store_logo, 'type' => 'image']);
            $store->store_logo = $asset->id;
        }
        if (isset($request->store_header_cover)) {
            // $storeLogoPath = $request->file('store_logo')->store('uploads');
            $asset = Asset::create(['url' => $request->store_header_cover, 'type' => 'image']);
            $store->store_header_cover = $asset->id;
        }
        // Upload store header cover image

        // Save the new Store instance to the database
        $store->save();
        return $this->success([
            $store
        ], 'Store was created successfully');
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
            'store_logo' => 'nullable|string',
            'store_header_cover' => 'nullable|string',
            'brand_color' => 'nullable|string',
            'store_email' => 'nullable|email',
            'storephoneno' => 'nullable|string',
            'category' => 'nullable|string',
            'note' => 'nullable|string',
            'accepting_orders' => 'nullable',
            'user_id' => 'nullable|string',
            'business_name' => 'nullable|string',
            'whatsapp' => 'nullable|string',
            'website' => 'nullable|string',
            'instagram' => 'nullable',
            'gst_id' => 'nullable',
            'bankaccno' => 'nullable',
            'holder_name' => 'nullable',
            'ifsc_code' => 'nullable',
            'bank_name' => 'nullable',
            'branch' => 'nullable',
            'pancardno' => 'nullable',
            'house_no' => 'nullable',
            'store_address' => 'nullable',
            'city' => 'nullable',
            'pincode' => 'nullable',
            'state' => 'nullable',
            'locality' => 'nullable',
            'brand_color' => 'nullable',
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }

        // OTP verification enabled.
        // $this->OTPMiddleware(null, $request);

        // Create a new Store model instance
        $store = Store::find($store->id);

        foreach ($validatedData->validated() as $key => $value) {
            if (($key == 'store_logo') || $key == 'store_header_cover')
                continue;
            $store->$key = $value;
        }
        // Upload store logo image
        if (isset($request->store_logo)) {
            // $storeLogoPath = $request->file('store_logo')->store('uploads');
            $asset = Asset::create(['url' => $request->store_logo, 'type' => 'image']);
            $store->store_logo = $asset->id;
        }
        if (isset($request->store_header_cover)) {
            // $storeLogoPath = $request->file('store_logo')->store('uploads');
            $asset = Asset::create(['url' => $request->store_header_cover, 'type' => 'image']);
            $store->store_header_cover = $asset->id;
        }
        // Save the new Store instance to the database
        $store->save();
        return $this->success([
            $store
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
        $store = Store::with(['user', 'logo', 'cover'])->find($store->id);
        return $this->success([
            $store
        ]);
    }

    public function details()
    {
        $this->validateRequest();
        $store = vendorStore();
        $lynks = Lynk::where(['lynks.store_id' => $store->id])->with(['products.product.record', 'record', 'products.product.images.productImage'])->get();
        $_lynks = [];
        $_lynks['store'] = $store;
        $_lynks['lynks'] = $lynks;
        return $this->success([
            $_lynks
        ]);
    }

    public function sectionCreate(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        if (!$store) {
            return $this->error('Please complete your business profile.', 401);
        }
        $validatedData = Validator::make($request->all(), [
            'name' => 'nullable|string',
        ]);
        if ($validatedData->fails()) {
            $message = $validatedData->errors()->first();
            return $this->error($message, 401);
        }
        $section = CatalogsSection::create(['store_id' => $store->id, 'name' => $validatedData->validated()['name']]);
        return $this->success([
            $section
        ], 'Section created successfully');
    }

    public function sectionList(Request $request)
    {
        $this->validateRequest();
        $store = vendorStore();
        if (!$store) {
            return $this->error('Please complete your business profile.', 401);
        }
        $products = [];
        $_sections = CatalogsSection::where(['catalogs_sections.store_id' => $store->id])->get();
        $sections = [];
        $index = 0;
        foreach($_sections as $section) {
            $products = CatalogSectionProduct::where(['section_id' => $section->id])->join('products', ['products.id' => 'catalog_section_products.product_id'])->get();
            $sections[] = $section;
            $sections[$index]->products = $products;
            $index++;
        }
        return $this->success([
            $sections
        ], 'Section list');
    }
}
