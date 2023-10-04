<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class ProductRequest extends Model
{
    protected $fillable = [
        'order_request_id',
        'product_image',
        'product_link',
        'product_name',
        'total_price',
        'discount_price',
        'alteration_days'
    ];
    public function orderRequest()
    {
        return $this->belongsTo(OrderRequest::class, 'order_request_id');
    }
}
