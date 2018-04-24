<?php

Route::group(['module' => 'EmployeeManagement', 'middleware' => ['api'], 'namespace' => 'App\Modules\EmployeeManagement\Controllers'], function() {

    Route::resource('EmployeeManagement', 'EmployeeManagementController');

});
