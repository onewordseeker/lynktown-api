<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        'user_id', 'store_id', 'business_id', 'total_price', 'subtotal_price',
        'shipping_address', 'shipping_charges', 'order_start_date', 'customer_name', 'phone_no',
        'note', 'status'
    ];
}
