<?php

Route::group(['module' => 'UserManagement', 'middleware' => ['api'], 'namespace' => 'App\Modules\UserManagement\Controllers'], function() {

    Route::resource('UserManagement', 'UserManagementController');

});
