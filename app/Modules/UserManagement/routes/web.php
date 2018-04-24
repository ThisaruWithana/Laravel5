<?php

Route::group(['prefix' => 'user/', 'module' => 'UserManagement', 'middleware' => ['web'], 'namespace' => 'App\Modules\UserManagement\Controllers'], function() {


	/** Get Methods **/

    Route::get('add', [
        'as' => 'users', 'uses' => 'UserManagementController@index'
    ]);

    Route::get('list', [
        'as' => 'users', 'uses' => 'UserManagementController@listView'
    ]);

    Route::get('edit/{id}', [
        'as' => 'users', 'uses' => 'UserManagementController@edit'
    ]);

    Route::get('changePassword/{id}', [
        'as' => 'users', 'uses' => 'UserManagementController@changePwdView'
    ]);

    Route::get('changeMyPassword', [
        'as' => 'users', 'uses' => 'UserManagementController@changeMyPassword'
    ]);

    /** Post Methods **/

    Route::post('add', [
        'as' => 'users', 'uses' => 'UserManagementController@store'
    ]);

    Route::post('changeStatus', [
        'as' => 'users', 'uses' => 'UserManagementController@changeStatus'
    ]); 

    Route::post('update', [
        'as' => 'users', 'uses' => 'UserManagementController@update'
    ]);

    Route::post('changePassword', [
        'as' => 'users', 'uses' => 'UserManagementController@updatePassword'
    ]);

    Route::post('changeMyPassword', [
        'as' => 'users', 'uses' => 'UserManagementController@updateMyPassword'
    ]);

});
