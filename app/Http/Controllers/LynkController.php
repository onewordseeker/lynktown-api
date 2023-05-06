<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Lynk;

class LynkController extends Controller
{
    //
    function list(Request $request) {
        $lynks = Lynk::where(['customer_id' => auth()->user()->id])->with('LynkProduct')->get();
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

        $lynk = Lynk::create($validated);
        return $this->success([
            $lynk
        ]);
    }

    public function show($id)
    {
        $lynk = Lynk::findOrFail($id);
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

        $lynk = Lynk::findOrFail($id);
        $lynk->update($validated);
        return response()->json($lynk);
    }

}
