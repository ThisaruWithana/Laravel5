<?php

namespace App\Modules\EmployeeManagement\Models;

use Illuminate\Database\Eloquent\Model;

class EmployeeManagement extends Model {

    protected $table = 'tbl_employee';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'first_name', 'last_name','address','mobile_no','landline_no','email','status','nic','short_code'
    ];

}
