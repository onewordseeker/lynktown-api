<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'quantity',
        'store_id',
        'price',
        'discount_price',
        'post_link',
        'img_id',
        'name',
        'size',
        'exchange_available',
        'status',
        'product_type', // ready-made, custom
    ];
    public function cover()
    {
        return $this->belongsTo(Asset::class, 'img_id');
    }
    public function LynkProducts()
    {
        return $this->hasMany(LynkProduct::class);
    }
}
