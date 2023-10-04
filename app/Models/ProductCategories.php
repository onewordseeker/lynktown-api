<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductCategories extends Model
{
    use HasFactory;
    protected $fillable = [
        'category_id',
        'product_id'
    ];

    public function productCategory()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
}
