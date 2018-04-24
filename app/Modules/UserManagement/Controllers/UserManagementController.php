<?php

namespace App\Modules\UserManagement\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use App\Http\Controllers\Controller;
use App\User;
use App\Modules\EmployeeManagement\Models\EmployeeManagement;
use App\Modules\EmployeeManagement\Models\RoleManagement;
use App\Modules\UserManagement\Requests\UserRequest;
use Auth;
use DB;
use Hash;

class UserManagementController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employee = EmployeeManagement::select(DB::raw("CONCAT(first_name,' ',last_name) AS name"),'id')->pluck('name','id');
        $employee->prepend('Select Employee','');
        $role = RoleManagement::where('role_id','!=',1)->pluck('role_name','role_id');
        $role->prepend('Select Role','');
        return view("UserManagement::index")->with(['employee' => $employee,'role' => $role]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        DB::beginTransaction();
        try{

            $username = $request['user_name'];
            $pwd = Hash::make($request['password']);
            $employee = $request['employee'];
            $user_role = $request['user_role'];
            
            $menu = User::create([
                        'user_name' => $username,
                        'password' => $pwd,
                        'role_id' => $user_role,
                        'employee_id' => $employee,
                        'status' => 1
                    ]);
            
            DB::commit();
            return redirect( 'user/add' )->with([ 'success' => true,
                'success.message'=> 'User added successfully!',
                'success.title' => 'Well Done!' ]);
        }catch(\Exception $e){
            DB::rollBack();
            return redirect( 'user/add' )->with([ 'error' => true,
                'error.message'=> $e->getMessage(),
                'error.title' => 'Ooops!' ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $employee = EmployeeManagement::select(DB::raw("CONCAT(first_name,' ',last_name) AS name"),'id')->pluck('name','id');
        $employee->prepend('Select Employee','');
        $role = RoleManagement::where('role_id','!=',1)->pluck('role_name','role_id');
        $role->prepend('Select Role','');
        $exist_data = User::select('employee_id','role_id')->find($id);
        // $selected_employee = EmployeeManagement::find
        return view("UserManagement::edit")->with(['employee' => $employee,
                                                    'role' => $role,
                                                    'exist' => $exist_data,
                                                    'id' => $id
                                                ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $request->validate([
            'employee' => 'required',
            'user_role' => 'required'
        ]);

        DB::beginTransaction();
        try{

            $id = $request['user_id'];
            $employee = $request['employee'];
            $role = $request['user_role'];

            $user = User::find($id);
            $user->role_id = $role;
            $user->employee_id = $employee;
            $user->save();

            DB::commit();
            return redirect('user/edit/'.$id )->with(['success' => true,
                'success.message'=> 'User Updated successfully!',
                'success.title' => 'Well Done!' ]);
        }catch(\Exception $e){
            DB::rollBack();
            return redirect('user/edit/'.$id )->with(['error' => true,
                'error.message'=> $e->getMessage(),
                'error.title' => 'Ooops!' ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function listView()
    {
        
        $user = User::select('tbl_web_user.id','tbl_web_user.user_name','tbl_web_user.role_id','tbl_web_user.employee_id','tbl_web_user.status','tbl_roles.role_name',DB::raw("CONCAT(tbl_employee.short_code,' - ',tbl_employee.first_name,' ',tbl_employee.last_name) AS employee"))
                ->join('tbl_employee','tbl_employee.id','=','tbl_web_user.employee_id')
                ->join('tbl_roles','tbl_roles.role_id','=','tbl_web_user.role_id')
                ->paginate(10);
        return view('UserManagement::list')->with(['user' => $user]);                
    }

    public function changeStatus(Request $request)
    {
        $status = $request->status;
        $id = $request->id;
        if($status == "true"){
            $status_bool = 1;
        }else{
            $status_bool = 0;
        }
        DB::beginTransaction();
        try{
            $user = User::find($id);
            $user->status = $status_bool;
            $user->save();

            DB::commit();
            return ;
        }catch(\Exception $e){
            DB::rollBack();
            return redirect('user/list');
        }
    }

    public function changePwdView($id)
    {
        return view("UserManagement::change-password")->with(['id' => $id]);
    }

    public function updatePassword(Request $request)
    {
        $request->validate([
            'password' => 'required',
            'password_confirm' => 'required'
        ]);

        $id = $request['user_id'];
        $pwd = $request['password'];

        DB::beginTransaction();
        try{
            $user = User::find($id);
            $user->password = Hash::make($pwd);
            $user->save();
            DB::commit();
            return redirect('user/changePassword/'.$id)->with(['success' => true,
                'success.message'=> 'Password Updated successfully!',
                'success.title' => 'Well Done!' ]);
        }catch(\Exception $e){
            DB::rollBack();
            return redirect('user/changePassword/'.$id)->with(['error' => true,
                'error.message'=> $e->getMessage(),
                'error.title' => 'Ooops!' ]);
        }
    }

    public function changeMyPassword()
    {
        $user_id = Auth::user()->id;
        $pwd = Auth::user()->password;
        return view("UserManagement::change-my-password")->with(['pwd' => $pwd,'id' => $user_id]);
    }

    public function updateMyPassword(Request $request)
    {
        $request->validate([
            'password' => 'required',
            'password_confirm' => 'required',
            'new_password' => 'required'
        ]);

        $id = $request['user_id'];
        $pwd = $request['new_password'];
        $old = $request['password'];
        $old_db = $request['password_confirmation'];

        DB::beginTransaction();
        try{
            if(!Hash::check($old, $old_db)){
                DB::rollBack();
                return redirect('user/changeMyPassword')->with(['error' => true,
                    'error.message'=> "Incorrect Current Password",
                    'error.title' => 'Ooops!' ]);
            }

            $user = User::find($id);
            $user->password = Hash::make($pwd);
            $user->save();
            DB::commit();
            return redirect('user/changeMyPassword')->with(['success' => true,
                'success.message'=> 'Your Password Updated successfully!',
                'success.title' => 'Well Done!' ]);
        }catch(\Exception $e){
            DB::rollBack();
            return redirect('user/changeMyPassword')->with(['error' => true,
                'error.message'=> $e->getMessage(),
                'error.title' => 'Ooops!' ]);
        }
    }
}
