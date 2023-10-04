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
        'return_available',
        'categories',
        'catalog_enabled',
        'recommended',
        'new_arrival',
        'status',
        'product_type', // ready-made, custom
    ];
    public function record()
    {
        return $this->hasOne(RecordDetails::class, 'product_id');
    }
    public function cover()
    {
        return $this->belongsTo(Asset::class, 'img_id');
    }
    public function store()
    {
        return $this->belongsTo(Store::class, 'store_id');
    }
    public function LynkProducts()
    {
        return $this->hasMany(LynkProduct::class);
    }
    public function images()
    {
        return $this->hasMany(ProductImages::class, 'product_id');
    }
    public function categories()
    {
        return $this->hasMany(ProductCategories::class, 'product_id');
    }
}
