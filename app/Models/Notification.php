<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    protected $fillable = [
        'user_id',
        'message',
        'status',
        'is_read',
        'sent_to',
    ];

    protected $casts = [
        'is_read' => 'boolean',
    ];
}
