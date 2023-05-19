<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lynk extends Model
{
    use HasFactory;

    protected $fillable = [
        'store_id',
        'url',
        'exchange_limit',
        'status',
        'pkg_width',
        'pkg_height',
        'pkg_length',
        'pkg_weight',
        'shipping_charges',
    ];
    public function products()
    {
        return $this->hasMany(LynkProduct::class, 'lynk_id');
    }
    public function store()
    {
        return $this->belongsTo(Store::class, 'store_id');
    }
    public function record()
    {
        return $this->hasOne(RecordDetails::class, 'lynk_id');
    }
    public function orders()
    {
        return $this->hasMany(Order::class);
    }
    public function wishlist()
    {
        return $this->hasMany(Wishlist::class);
    }
}
