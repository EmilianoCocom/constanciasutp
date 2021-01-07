<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/controlescolar', function (){
    return view('lista-constancias/index');
});

// Route::get('/constancias-constancia-de-estudios-simple', function (){
//     return view('formato-solicitud-constancias/constancia-simple');
// });

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('catalogo-constancias', 'CatalogoConstanciasController');
Route::get('list-users','UserController@index');

Route::get('/constancias-constancia-de-estudios-simple', 'SolicitudConstanciaController@index');
