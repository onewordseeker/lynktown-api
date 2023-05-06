<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DeliverySettings extends Model
{
    use HasFactory;

    protected $table = 'delivery_settings';

    protected $fillable = [
        'store_id',
        'in_bangalore_delivery_fee',
        'out_bangalore_delivery_fee',
        'per_km',
    ];
}
