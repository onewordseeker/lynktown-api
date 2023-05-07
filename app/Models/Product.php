<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'order_id',
        'product_id',
        'quantity',
        'price',
        'discount_price',
        'post_link',
        'img_id',
        'name',
        'size',
        'exchange_available',
        'status',
        'product_type',
    ];
}
