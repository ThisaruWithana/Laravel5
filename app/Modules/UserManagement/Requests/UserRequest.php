<?php
namespace App\Modules\UserManagement\Requests;

use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;
use App\User;
use Input;

class UserRequest extends FormRequest {

	public function authorize(){
		return true;
	}

	public function rules(){
        
		$rules = [
			'user_name' => 'required|unique:tbl_web_user,user_name',
			'password' => 'required',
			'password_confirm' => 'required',
			'employee' => 'required',
			'user_role' => 'required',
		];

		return $rules;
	}

}
