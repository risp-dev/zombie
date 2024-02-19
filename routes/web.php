<?php

use Illuminate\Support\Facades\Route;
use App\Models\Zombie as Zombie;
use App\Models\Weapon as Weapon;
use Illuminate\Http\Request;
use App\Http\Controllers\ZombieController;

#Let's make all the zombies present so define a route linked to controller method
Route::get('zombies', [ZombieController::class, 'show']);

#Route::get('/zombie', [ZombieController::class, 'index']);


Route::get('zombies', function(){

    #$data = ['zombies' => Zombie::all()];
    #return view('zombies', $data);
    //Line below does the same job as those two above
    return view('zombies', ['zombies' => Zombie::all()]);
});

Route::get('graveyard', function() {
    return view('graveyard');
}); 



Route::get('/weapon/{id}', function($id) {
    $weapon = Weapon::find($id);
    echo "This " . $weapon->name . " belongs to " . $weapon->zombie->name;
});

Route::get('/zombie/{id}', function($id) {
    $zombie = Zombie::find($id);
    echo 'Name: ' . $zombie->name . '<br />';
    echo 'Strength: ' . $zombie->strength . '<br />';
    echo 'Health: ' . $zombie->health . '<br />';
    echo 'Weapon: ' . $zombie->weapon->name . '<br />';

});

Route::delete('/zombie', function(Request $request){
    $id = $request->id;
    Zombie::destroy($id);
});

Route::get('/admin/zombies/create', function() {
    echo '
    <form method="POST" action="/admin/zombies/create">
    <input type="text" name="name" placeholder="Name"><br>
    <input type="text" name="strength" placeholder="Strength"><br>
    <input type="text" name="health" placeholder="Health"><br>
    <input type="weapon" name="weapon" placeholder="Weapon>"
    <input type="hidden" name="_token" value="' . csrf_token() . '">
    <input type="submit" value="Create New Zombie">
    </form>
    ';
});

Route::post('/admin/zombies/create', function(Request $request) {
    //instance of a new zombie
    // $zombie = new Zombie();
    // $zombie->name = $request->name;
    // $zombie->strength = $request->strength;
    // $zombie->health = $request->health;
    // $zombie->save();

    //instantiate a new zombie using posted data without manually as above

    $zombie = Zombie::create($request->all());

    echo 'Zombie created';
});


