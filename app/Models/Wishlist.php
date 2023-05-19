<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
    protected $table = 'wishlist';

    protected $fillable = ['user_id', 'lynk_id'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function lynk()
    {
        return $this->belongsTo(Lynk::class);
    }
}
