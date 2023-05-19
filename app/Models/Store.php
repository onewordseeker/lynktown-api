<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    protected $fillable = [
        'user_id', 'store_logo', 'store_header_cover', 'brand_color', 'store_address',
        'store_email', 'storephoneno', 'category', 'status', 'note', 'accepting_orders', 'deleted'
    ];
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function logo()
    {
        return $this->belongsTo(Asset::class, 'store_logo');
    }
    public function cover()
    {
        return $this->belongsTo(Asset::class, 'store_header_cover');
    }
    public function catalogs()
    {
        return $this->hasMany(Catalog::class, 'store_id');
    }
    public function lynks()
    {
        return $this->hasMany(Lynk::class, 'store_id');
    }
    public function orders()
    {
        return $this->hasMany(Order::class);
    }
    public function wishlist()
    {
        return $this->hasMany(Wishlist::class);
    }
    public function products()
    {
        return $this->hasMany(Product::class);
    }
    public function follows()
    {
        return $this->hasMany(Follow::class);
    }
}
