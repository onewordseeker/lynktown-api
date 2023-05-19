<?php

namespace App\Http\Controllers;

use App\Models\Lynk;
use App\Models\Product;
use App\Models\Store;
use App\Models\Wishlist;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function feed(Request $request)
    {
        $this->validateRequest();

        $lynks = Lynk::inRandomOrder()->paginate(10);

        $lynks->pluck('store');

        return $this->success([
            'lynks' => $lynks,
        ]);
    }


    /**
     * Show the form for creating a new resource.
     */
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
            ]);
            $message = 'Item added to wishlist.';
        }

        return $this->success([
            'message' => $message,
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Lynk $lynk)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Lynk $lynk)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Lynk $lynk)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Lynk $lynk)
    {
        //
    }
}
