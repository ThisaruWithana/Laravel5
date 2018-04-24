<?php

Route::group(['prefix' => 'menu/','module' => 'MenuManagement', 'middleware' => ['web'], 'namespace' => 'App\Modules\MenuManagement\Controllers'], function() {

	/** Get Methods **/

    Route::get('add', [
        'as' => 'menus', 'uses' => 'MenuManagementController@index'
    ]);

    Route::get('list', [
        'as' => 'menus', 'uses' => 'MenuManagementController@listView'
    ]);

    Route::get('edit/{id}', [
        'as' => 'menus', 'uses' => 'MenuManagementController@edit'
    ]);

    /** Post Methods **/

    Route::post('add', [
        'as' => 'menus', 'uses' => 'MenuManagementController@create'
    ]);

    Route::post('update', [
        'as' => 'menus', 'uses' => 'MenuManagementController@update'
    ]);

    Route::post('changeStatus', [
        'as' => 'menus', 'uses' => 'MenuManagementController@changeStatus'
    ]);
});
