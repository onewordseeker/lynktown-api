<?php
use App\Models\Store;

function vendorStore($vendor_id = null) {
    if(isset(Auth()->user()->id) || isset($vendor_id)) {
        return $store= Store::where(['user_id' => Auth()->user()->id ? Auth()->user()->id : $vendor_id ])->first();
    } else {
        print_r(json_encode([
			'status' => 'Failed',
			'message' => 'Invalid request',
			'data' => '1001'
		]));
		exit;
    }
}
