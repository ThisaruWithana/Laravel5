<?php

namespace App\Modules\MenuManagement\Models;

use Illuminate\Database\Eloquent\Model;

class IconManagement extends Model {

    protected $table = 'tbl_icon';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'type', 'icon','unicode'
    ];

}
