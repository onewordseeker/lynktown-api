<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\LynkProduct;

class LynkProductController extends Controller
{
   //
   function list(Request $request) {
    $lynks = LynkProduct::where(['lynk_id' => $request->lynk_id])->with('Product')->get();
    return $this->success([
        $lynks
    ]);
}

public function store(Request $request)
{
    $validated = $request->validate([
        'store_id' => 'required|integer',
        'url' => 'required|url',
        'exchange_limit' => 'required|integer'
    ]);

    $lynk = LynkProduct::create($validated);
    return $this->success([
        $lynk
    ]);
}

public function show($id)
{
    $lynk = LynkProduct::findOrFail($id);
    return $this->success([
        $lynk
    ]);
}

public function update(Request $request, $id)
{
    $validated = $request->validate([
        'url' => 'sometimes|required|url',
        'exchange_limit' => 'sometimes|required|integer',
        'status' => 'sometimes|required|in:active,inactive'
    ]);

    $lynk = LynkProduct::findOrFail($id);
    $lynk->update($validated);
    return response()->json($lynk);
}

}