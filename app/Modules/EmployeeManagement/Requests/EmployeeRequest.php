<?php
namespace App\Modules\EmployeeManagement\Requests;

use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;
use Input;

class EmployeeRequest extends FormRequest {

	public function authorize(){
		return true;
	}

	public function rules(){
        
		$rules = [
			'first_name' => 'required',
			'last_name' => 'required',
			'short_code' => 'required|unique:tbl_employee,short_code',
		];

		return $rules;
	}

}
