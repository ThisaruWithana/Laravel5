<?php

Route::group(['prefix' => 'employee/','module' => 'EmployeeManagement', 'middleware' => ['web'], 'namespace' => 'App\Modules\EmployeeManagement\Controllers'], function() {

    /** Get Methods **/

    Route::get('add', [
        'as' => 'employee', 'uses' => 'EmployeeManagementController@index'
    ]);

    Route::get('list', [
        'as' => 'employee', 'uses' => 'EmployeeManagementController@listView'
    ]);

    Route::get('edit/{id}', [
        'as' => 'employee', 'uses' => 'EmployeeManagementController@edit'
    ]);

    /** Post Methods **/

    Route::post('add', [
        'as' => 'employee', 'uses' => 'EmployeeManagementController@store'
    ]);

    Route::post('update', [
        'as' => 'employee', 'uses' => 'EmployeeManagementController@update'
    ]);

    Route::post('changeStatus', [
        'as' => 'employee', 'uses' => 'EmployeeManagementController@changeStatus'
    ]);

});
