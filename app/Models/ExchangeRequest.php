<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExchangeRequest extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_id',
        'store_id',
        'product_id',
        'business_id',
        'user_id',
        'reason',
        'description',
        'photo_id',
        'status',
    ];
}
