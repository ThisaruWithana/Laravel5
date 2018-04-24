<?php

namespace App\Modules\MenuManagement\Models;

use Illuminate\Database\Eloquent\Model;

class MenuManagement extends Model {

    protected $table = 'tbl_menu';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'menu_name', 'url','parent_id','last_login','status','icon','icon_id','sequence'
    ];

}
