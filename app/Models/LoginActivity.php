<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LoginActivity extends Model
{
    protected $fillable = ['ip_address', 'user_id', 'device_info'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
