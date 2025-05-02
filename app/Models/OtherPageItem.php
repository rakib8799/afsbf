<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OtherPageItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'terms_content',
        'privacy_content'
    ];
}
