<?php

namespace App\Modules\EmployeeManagement\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;
use App\Http\Controllers\Controller;
use App\Modules\EmployeeManagement\Requests\EmployeeRequest;
use App\Modules\EmployeeManagement\Models\EmployeeManagement;
use App\Modules\EmployeeManagement\Models\RoleManagement;
use App\User;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use Auth;
use DB;

class EmployeeManagementController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("EmployeeManagement::index");
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
    public function store(EmployeeRequest $request)
    {
        DB::beginTransaction();
        try{
            
            $first_name = $request['first_name'];
            $last_name = $request['last_name'];
            $mobile_no = $request['mobile_no'];
            $landline_no = $request['landline_no'];
            $email = $request['email'];
            $nic = $request['nic'];
            $short_code = $request['short_code'];
            $address = $request['address'];

            $menu = EmployeeManagement::create([
                        'first_name' => $first_name,
                        'last_name' => $last_name,
                        'address' => $address,
                        'mobile_no' => $mobile_no,
                        'landline_no' => $landline_no,
                        'email' => $email,
                        'status' => 1,
                        'nic' => $nic,
                        'short_code' => $short_code
                    ]);
            DB::commit();
            return redirect('employee/add' )->with([ 'success' => true,
                'success.message'=> 'Employee added successfully!',
                'success.title' => 'Well Done!' ]);
        }catch(\Exception $e){
            DB::rollBack();
            return redirect( 'employee/add' )->with([ 'error' => true,
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
        $employee = EmployeeManagement::find($id);
        return view('EmployeeManagement::edit')->with(['employee' => $employee]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(EmployeeRequest $request)
    {
        DB::beginTransaction();
        try{
            $employee_id = $request['employee_id'];
            $first_name = $request['first_name'];
            $last_name = $request['last_name'];
            $mobile_no = $request['mobile_no'];
            $landline_no = $request['landline_no'];
            $email = $request['email'];
            $nic = $request['nic'];
            $short_code = $request['short_code'];
            $address = $request['address'];
            
            $employee = EmployeeManagement::find($employee_id);
            $employee->first_name = $first_name;
            $employee->last_name = $last_name;
            $employee->address = $address;
            $employee->mobile_no = $mobile_no;
            $employee->landline_no = $landline_no;
            $employee->email = $email;
            $employee->nic = $nic;
            $employee->short_code = $short_code;
            $employee->save();

            DB::commit();
            return redirect('employee/edit/'.$employee_id )->with(['success' => true,
                'success.message'=> 'Employee Updated successfully!',
                'success.title' => 'Well Done!' ]);
        }catch(\Exception $e){
            DB::rollBack();
            return redirect('employee/edit/'.$employee_id )->with(['error' => true,
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
        $employee = EmployeeManagement::paginate(10);
        return view('EmployeeManagement::list')->with(['employee' => $employee]);
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
            $menus = EmployeeManagement::find($id);
            $menus->status = $status_bool;
            $menus->save();

            DB::commit();
            return ;
        }catch(\Exception $e){
            DB::rollBack();
            return redirect('menu/list');
        }
    }
}
