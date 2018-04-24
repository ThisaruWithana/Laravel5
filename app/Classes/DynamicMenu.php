<?php

/**
 * @Author: Thisaru
 * @Date:   2018-04-02 12:07:06
 * @Last Modified by:   Thisaru
 * @Last Modified time: 2018-04-06 11:03:05
 */
namespace App\Classes;

use Auth;
use DB;


/**
* 
*/
class DynamicMenu 
{
	

	static function generateMenu($items = array(), $parent_id = 0)
	{
		$role_id = Auth::user()->role_id;
		$items = [];
		if($role_id != 1){
			$items = DB::select(DB::raw(
						"SELECT 
						    tbl_menu.id,
						    tbl_menu.menu_name,
						    tbl_menu.url,
						    tbl_menu.parent_id,
						    tbl_menu.icon,
						    tbl_menu.status,
						    tbl_menu.created_at,
						    tbl_menu.updated_at,
						    tbl_menu.sequence
						FROM
						    tbl_menu
						        INNER JOIN
						    tbl_permissions ON tbl_menu.id = tbl_permissions.menu_id
						WHERE
						    tbl_permissions.role_id = $role_id
						        AND tbl_menu.status = 1
						        AND tbl_permissions.status = 1
						ORDER BY
							tbl_menu.parent_id,tbl_menu.sequence ASC"
					));
		}else{
			$items = DB::select(DB::raw(
						"SELECT 
						    tbl_menu.id,
						    tbl_menu.menu_name,
						    tbl_menu.url,
						    tbl_menu.parent_id,
						    tbl_menu.icon,
						    tbl_menu.status,
						    tbl_menu.created_at,
						    tbl_menu.updated_at,
						    tbl_menu.sequence
						FROM
						    tbl_menu
						WHERE
						    tbl_menu.status = 1
						ORDER BY
							tbl_menu.parent_id,tbl_menu.sequence ASC"
					));
		}

		$tree = "";
		if(count($items) > 0){
			foreach ($items as $key => $value) {
		    	if($value->parent_id == $parent_id){
		    		if($value->url == "#"){
			    		$tree .= 	"<li class=\"treeview\">";
		    		}else{
		    			$tree .= 	"<li>";
		    		}
		    		$tree .= 	"<a href=". url($value->url) ." >";
		    		$tree .=  		"<i class=\"".$value->icon."\"></i><span>".$value->menu_name ."</span>";
		    		$tree .= 	"</a>";
		    		$tree .= 	"<ul class=\"treeview-menu\" >";
		    		$tree .= 		DynamicMenu::generateMenu($value, $value->id);
		    		$tree .= 	"</ul>";
		    		$tree .= "</li>";
		    	}
		    }
		}
	    return $tree;
	}
}