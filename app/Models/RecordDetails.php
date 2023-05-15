<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RecordDetails extends Model
{
    use HasFactory;
    protected $fillable = [
        'lynk_id', 'product_id', 'views', 'clicks', 'total_sells'
    ];
}
