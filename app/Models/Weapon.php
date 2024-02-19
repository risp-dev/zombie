<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Weapon extends Model {
    protected $table = 'weapons';

    public function zombie() {
        return $this->BelongsTo('App\Models\Zombie');
    }
}