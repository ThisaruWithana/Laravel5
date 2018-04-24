<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests;
use Illuminate\Http\Request;
use Auth;
use Sentinel;
use Session;
use Input;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function loginView()
    {
        try{
            return view('login.login');
        }catch(\Exception $e){
            return view('login.login')->withErrors(['login' => $e->getMessage()]);
        }
    }

    public function login(Request $request)
    {
        $credentials = array(
            'user_name'    => Input::get('username'),
            'password' => Input::get('password'),
            'status' => 1
        );
        try{
            $user = Auth::attempt($credentials);
            if ($user){
                return redirect('/');
            }else{
                return redirect('user/login')->with('error','Incorrect Username/Password');
            }

        }catch(\Exception $e){
            return redirect('user/login')->with('error',$e->getMessage());
        }
        
        // return redirect()->route('login')->withErrors(array('login' => $msg));
        
    }

    public function logout(){
         Auth::logout();
         return redirect('user/login');

    }
}
