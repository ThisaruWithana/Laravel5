<?php

namespace App\Modules\MenuManagement\Models;

use Illuminate\Database\Eloquent\Model;

class PermissionManagement extends Model {

    protected $table = 'tbl_permissions';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'role_id', 'menu_id','status'
    ];

}
