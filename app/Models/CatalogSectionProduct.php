<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CatalogSectionProduct extends Model
{
    use HasFactory;

    protected $table = 'catalog_section_products';

    protected $fillable = [
        'product_id',
        'section_id',
        'catalog_id',
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

    public function catalog()
    {
        return $this->belongsTo(Catalog::class);
    }
}
