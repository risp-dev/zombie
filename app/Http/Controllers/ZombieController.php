<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Zombie;

class ZombieController extends Controller {
    // public function index() {
    //     echo "Welcome to the Zombie Page!";
    public function show() {
        $zombies = Zombie::all();
    }
}