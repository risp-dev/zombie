<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Zombie extends Model {
    protected $table = 'zombies';

    //added after instantiate a new zombie using posted data in web.php
    //protected $fillable = ['name', 'strength', 'health'];

   // public function weapon() {
    //    return $this->hasOne('App\Models\Weapon');
    //}

    //this makes zombie names first letter uppercase if they are lowercase in db
    protected function name(): Attribute {
        return Attribute::make(
            get: fn (string $value) => ucwords($value),
            set: fn (string $value) => ucwords($value),
        );
    }
}