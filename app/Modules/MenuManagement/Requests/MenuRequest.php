<?php
namespace App\Modules\MenuManagement\Requests;

use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;
use Input;

class MenuRequest extends FormRequest {

	public function authorize(){
		return true;
	}

	public function rules(){
        
		$rules = [
			'labels' => 'required',
			'menu_url' => 'required',
			'menu_icon' => 'required',
			'permission' => 'required',
		];

		return $rules;
	}

}
