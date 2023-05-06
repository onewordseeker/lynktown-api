<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BusinessSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'business_name',
        'phone_no',
        'email',
        'whatsapp',
        'website',
        'instagram',
        'gst_id',
        'bankaccno',
        'holder_name',
        'ifsc_code',
        'bank_name',
        'branch',
        'pancardno',
        'house_no',
        'address',
        'city',
        'pincode',
        'state',
        'locality',
        'status',
        'store_logo',
        'store_header_cover',
        'brand_color',
        'note',
        'accepting_orders',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
