<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catalog;
use Illuminate\Support\Facades\Validator;

class CatalogController extends Controller
{
    //
    function list(Request $request) {
        $data = Catalog::where(['store_id' => $request->store_id])->with('store')->get();
        return $this->success([
            $data
        ]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'store_id' => 'required|integer',
            'category' => 'required|string',
        ]);
        if ($validator->fails()) {
            $message = $validator->errors()->first();
            return $this->error($message, 401);
        }
        $data = Catalog::create($validator->validated());
        return $this->success([
            $data
        ]);
    }

    public function show($id)
    {
        $lynk = Catalog::findOrFail($id);
        return $this->success([
            $lynk
        ]);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'store_id' => 'required|integer',
        ]);
        if ($validator->fails()) {
            $message = $validator->errors()->first();
            return $this->error($message, 401);
        }

        $lynk = Catalog::findOrFail($id);
        $lynk->update($validator->validated());
        return response()->json($lynk);
    }

}
