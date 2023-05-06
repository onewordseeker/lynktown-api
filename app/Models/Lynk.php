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
        'customer_id',
        'exchange_limit',
        'status',
    ];
}
