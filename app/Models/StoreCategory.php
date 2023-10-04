<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StoreCategory extends Model
{
    use HasFactory;
    protected $fillable = [
        'category_id',
        'store_id'
    ];

    public function storeCategory()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
}
