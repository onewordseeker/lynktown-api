<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Store;

class CategoryController extends Controller
{
    //
    function list(Request $request)
    {
        $store = Store::where(['user_id' => auth()->user()->id])->first();
        if (!$store) {
            return $this->error('You have no store yet. Please create one.', 401);
        }
        $this->validateRequest();
        $store = vendorStore();
        $category = Category::all();
        return $this->success([
            $category
        ]);
    }

}
