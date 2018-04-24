<?php 
namespace App\Http\Controllers;

use App\User;
use Validator;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use App\Classes\Functions;
use Illuminate\Http\Request;
use Sentinel;
use DB;
use Hash;

class TestController extends Controller {


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
	public function addUser(Request $request)
	{
        $user = $request->user_name;
        $pwd = $request->password;
        $user = User::create([
                    'user_name' => $user,
                    'password' =>  Hash::make($pwd)
                ]);

		return $user;
	}



	public function test(){
		return Menu::rebuild();
		return Functions::getEmployeeRepIds(7);
	}


}
