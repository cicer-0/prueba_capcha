<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'nationality',
        'birth_date',
        'death_date',
        'biography',
    ];

    protected $casts = [
        'birth_date' => 'date',
        'death_date' => 'date',
    ];
}
