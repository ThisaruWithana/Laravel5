<?php

namespace App\Modules\MenuManagement\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use App\Http\Controllers\Controller;
use App\Modules\MenuManagement\Models\MenuManagement;
use App\Modules\MenuManagement\Models\IconManagement;
use App\Modules\MenuManagement\Models\PermissionManagement;
use App\Modules\EmployeeManagement\Models\RoleManagement;
use App\Modules\MenuManagement\Requests\MenuRequest;
use Auth;
use DB;
use Input;

class MenuManagementController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $icon = IconManagement::select(DB::raw("CONCAT(unicode,' ',icon) AS icon"),'id')->pluck('icon','id');
        $icon->prepend('Select Icon','');
        $menus = MenuManagement::pluck('menu_name','id');
        $menus->prepend('Select Parent',0);
        $role = RoleManagement::where('role_id','!=',1)->pluck('role_name','role_id');
        return view('MenuManagement::index')->with(['icon' => $icon,'menus' => $menus,'role' => $role]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(MenuRequest $request)
    {
        DB::beginTransaction();
        try{
            
            $label = $request['labels'];
            $icon_id = $request['menu_icon'];
            $url = $request['menu_url'];
            $parent = $request['parent_menu'];
            $permission = $request['permission'];

            $icon_ar = IconManagement::where('id','=',$icon_id)->first();
            $icon = 'fa '.$icon_ar->icon;
            $sequence = MenuManagement::where('parent_id','=',$parent)->count() + 1;
            
            $menu = MenuManagement::create([
                        'menu_name' => $label,
                        'url' => $url,
                        'parent_id' => $parent,
                        'icon' => $icon,
                        'icon_id' => $icon_id,
                        'sequence' => $sequence,
                        'status' => 1
                    ]);
            foreach ($permission as $key => $value) {
                $perm = PermissionManagement::create([
                            'role_id' => $value,
                            'menu_id' => $menu->id,
                            'status' => 1
                        ]);
            }
            DB::commit();
            return redirect( 'menu/add' )->with([ 'success' => true,
                'success.message'=> 'Menu added successfully!',
                'success.title' => 'Well Done!' ]);
        }catch(\Exception $e){
            DB::rollBack();
            return redirect( 'menu/add' )->with([ 'error' => true,
                'error.message'=> $e->getMessage(),
                'error.title' => 'Ooops!' ]);
        }


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        $all_icon = IconManagement::select(DB::raw("CONCAT(unicode,' ',icon) AS icon"),'id')->pluck('icon','id');
        $all_icon->prepend('Select Icon','');
        $all_menu = MenuManagement::pluck('menu_name','id');
        $all_menu->prepend('Select Parent',0);
        $all_role = RoleManagement::where('role_id','!=',1)->pluck('role_name','role_id');

        $permission = [];
        $selected_menu = MenuManagement::find($id);
        $permission_list = PermissionManagement::where('menu_id',$id)->get();
        foreach ($permission_list as $key => $value) {
            array_push($permission, $value->role_id);
        }
        return view('MenuManagement::edit')->with(['all_icon' => $all_icon,
                                    'all_menu' => $all_menu,
                                    'all_role' => $all_role,
                                    'selected_menu' =>$selected_menu,
                                    'permission_roles' => $permission,
                                    'menu_id' => $id]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(MenuRequest $request)
    {
        DB::beginTransaction();
        try{
            $menu_id = $request['menu_id'];
            $label = $request['labels'];
            $icon_id = $request['menu_icon'];
            $url = $request['menu_url'];
            $parent = $request['parent_menu'];
            $permission = $request['permission'];

            $icon_ar = IconManagement::where('id','=',$icon_id)->first();
            $icon = 'fa '.$icon_ar->icon;
            
            $menus = MenuManagement::find($menu_id);
            $menus->menu_name = $label;
            $menus->url = $url;
            $menus->parent_id = $parent;
            $menus->icon = $icon;
            $menus->icon_id = $icon_id;
            $menus->save();

            $permission_deny = PermissionManagement::where('menu_id',$menu_id)->update(['status' => 0]);
            foreach ($permission as $key => $value) {
                $perm = PermissionManagement::create([
                            'role_id' => $value,
                            'menu_id' => $menu_id,
                            'status' => 1
                        ]);
            }
            DB::commit();
            return redirect('menu/edit/'.$menu_id )->with(['success' => true,
                'success.message'=> 'Menu Updated successfully!',
                'success.title' => 'Well Done!' ]);
        }catch(\Exception $e){
            DB::rollBack();
            return redirect('menu/edit/'.$menu_id )->with(['error' => true,
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


    public function listView(Request $request)
    {
        $all_menu = DB::select(DB::raw(
                    "SELECT 
                        tm.id,
                        tm.menu_name,
                        tm.icon,
                        tm.status,
                        tp.menu_name AS parent
                    FROM
                        tbl_menu tm
                            LEFT JOIN
                        tbl_menu tp ON tm.parent_id = tp.id"
                ));

        $page = ($request->has('page'))?$request->page:1;
        $perPage = 10;
        $offset = ($page * $perPage) - $perPage;

        $datas = new LengthAwarePaginator(
            array_slice($all_menu, $offset, $perPage, true),
            count($all_menu),
            $perPage,
            Paginator::resolveCurrentPage(),
            ['path' => Paginator::resolveCurrentPath()]
        );

        return view('MenuManagement::list',['data' => $datas->appends(Input::except('page'))]);
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
            $menus = MenuManagement::find($id);
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
