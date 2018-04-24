<?php

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


Route::group(['middleware' => ['auth']], function()
{
    Route::get('/', [
      'as' => 'index', 'uses' => 'WelcomeController@admin'
    ]);
});

Route::get('user/login', [
  'as' => 'login', 'uses' => 'Auth\LoginController@loginView'
]);

Route::post('user/login', [
  'as' => 'login', 'uses' => 'Auth\LoginController@login'
]);

Route::get('user/logout', [
  'as' => 'logout', 'uses' => 'Auth\LoginController@logout'
]);

Route::post('users/add', [
  'as' => 'user', 'uses' => 'TestController@addUser'
]);