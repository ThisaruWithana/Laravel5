<?php

/**
 * @Author: Thisaru
 * @Date:   2018-03-29 10:20:26
 * @Last Modified by:   Thisaru
 * @Last Modified time: 2018-04-02 16:32:24
 */

namespace App\Http\Controllers;

use App\User;
use App\Modules\UserManagement\Models\UserManagement;
use Validator;
use App\Classes\Functions;
use Illuminate\Http\Request;
use Sentinel;
use DB;
use Hash;
use Auth;

class WelcomeController extends Controller {


    public function __construct(){
        
    }
	/*
	|--------------------------------------------------------------------------
	| Welcome Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders the "marketing page" for the application and
	| is configured to only allow guests. Like most of the other sample
	| controllers, you are free to modify or remove it as you desire.
	|
	*/


	/**
	 * Show the application welcome screen to the user.
	 *
	 * @return Response
	 */
	public function admin(Request $request)
	{
		$user_id = Auth::user()->id;
		// $profile = UserManagement::where('user_id',$user_id)->first();
        return view('dashboard')/*->with(['profile' => $profile])*/;
	}

}
