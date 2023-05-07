<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Catalog extends Model
{
    use HasFactory;

    protected $fillable = [
        'category',
        'store_id',
        'status',
    ];
    public function store()
    {
        return $this->belongsTo(Store::class);
    }
}
