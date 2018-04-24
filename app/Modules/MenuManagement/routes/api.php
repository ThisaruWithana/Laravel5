<?php

Route::group(['module' => 'MenuManagement', 'middleware' => ['api'], 'namespace' => 'App\Modules\MenuManagement\Controllers'], function() {

    Route::resource('MenuManagement', 'MenuManagementController');

});
