<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderRequest extends Model
{
    protected $fillable = [
        'user_id', 'store_id', 'full_name', 'phone_no', 'business_id', 'status','is_accepted', 'note', 'reason'
    ];

    public function productRequests()
    {
        return $this->hasMany(ProductRequest::class, 'order_request_id');
    }
    public function order()
    {
        return $this->hasMany(order::class, 'order_request_id');
    }

}
