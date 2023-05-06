<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    protected $fillable = [
        'user_id', 'store_logo', 'store_header_cover', 'brand_color', 'store_address',
        'store_email', 'storephoneno', 'category', 'status', 'note', 'accepting_orders', 'deleted'
    ];
}
