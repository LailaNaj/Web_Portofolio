<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'content', 'profesi', 'me', 'birthday', 'age', 'website', 'phone', 'city', 'photos'];
}
