<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CatalogSectionProduct extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'catalog_section_products';

    protected $fillable = [
        'product_id',
        'section_id',
        'status',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function section()
    {
        return $this->belongsTo(CatalogSection::class);
    }
}
