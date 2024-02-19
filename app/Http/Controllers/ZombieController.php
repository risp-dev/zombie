<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Models\Zombie as Zombie;

class ZombieController extends Controller {
    // public function index() {
    //     echo "Welcome to the Zombie Page!";
    public function show() {
        $zombies = Zombie::all();
        return view('zombies', compact('zombies'));
    }
}