@extends('layouts.master') @section('title','User List')

@section('css')

<style type="text/css">
   .bg-white{
        background: #fff;
   }
   .skin-blue .content-header {
   	    background-color: #fff;
   	    padding: 10px;
   }

   .box{
   		border-top:none;	
   }


</style>  
@stop

@section('content')

	<section class="content-header">
		<h1>User <small>Management</small> </h1>
		<ol class="breadcrumb">
			<li><a href="{{{url('/')}}}"><i class="fa fa-home mr5"></i>Home</a></li>
			<li><a href="{{{url('user/add')}}}">Add User</a></li>
			<li class="active">User List</li>
		</ol>
	</section>
	<section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">User List</h3>
                <div class="box-tools pull-right">
                </div>
            </div>
            <div class="box-body">
                <form method="get" role="form" >
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="col-lg-1">
                                <label class="control-label">Role</label>
                            </div>
                            <select name="type" class='form-control' required="required" id="type">
                                <option value="0">--All Types--</option>
                                <option value="1" >Dosage</option>
                                <option value="2" >Strength</option>
                                <option value="3" >Unit</option>
                                <option value="4" >Pharmacopia</option>
                                <option value="5" >Brand</option>
                                <option value="6" >Category</option>
                            </select>
                         </div> 
                         <div class="row">  
                            <div class="col-md-12 text-right" style="padding-right:30px">
                                <button type="submit" class="btn btn-primary btn-sm" ><i class="fa fa-search"></i> Find</button>
                                <button type="reset" onclick="clear_filters()"  class="btn btn-danger btn-sm"><i class="fa fa-undo"></i> Clear</button>
                                <button type="button" onclick="ExportExcel()" class="btn btn-success btn-sm"><i class="fa fa-file-excel-o"></i> Excel</button>
                            </div>
                        </div> 
                    </div>
                </form>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="table-wrapper">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr class="table-header">
                                    <th rowspan="2" class="text-center">Employee</th>
                                    <th rowspan="2" class="text-center">User Name</th>
                                    <th rowspan="2" class="text-center">Role</th>
                                    <th rowspan="2" class="text-center">Status</th>
                                    <th colspan="2" class="text-center">Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($user as $value)
                                    <tr>
                                        <td style="text-align: left">{{ $value->employee }}</td>
                                        <td style="text-align: left">{{ $value->user_name }}</td>
                                        <td style="text-align: left">{{ $value->role_name }}</td>
                                        <td style="text-align: center">
                                            <input type="checkbox" id="status_<?php echo $i; ?>" name="status_<?php echo $i; ?>" onchange="changeStatus(<?php echo $i; ?>,<?php echo $value->id; ?>)" @if($value->status == 1) checked @endif data-toggle="toggle" data-on="Active" data-off="Deactive" data-size="mini" data-onstyle="success">
                                        </td>
                                        <td style="text-align: center;">
                                            <a title="Edit Data" href="{{url('user/edit')}}/{{ $value->id }}">
                                                <i class="fa fa-pencil"></i>
                                            </a>
                                        </td>
                                        <td style="text-align: center;">
                                            <a title="Change Password" href="{{url('user/changePassword')}}/{{ $value->id }}">
                                                <i class="fa fa-unlock-alt"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <?php $i++; ?>
                                @endforeach
                            </tbody>
                        </table>   
                    </div>  
                    <div class="row">
                        <div class="col-md-12 text-right">   
                            {{ $user->links() }}    
                        </div>
                    </div>        
                </div>    
            </div> <!-- /.box-body -->
        </div><!-- /.box -->
    </section><!-- /.content -->

@stop

@section('js')

<script type="text/javascript">
    $("#permission").multiSelect();

    function changeStatus(x,id){
        var status = $('#status_'+x).is(':checked'); 
        $.ajax({
            url: "{{url('user/changeStatus')}}",
            type: 'POST',
            data: {
                    "_token": "{{ csrf_token() }}",
                    "id" : id,
                    'status': status
                  },
            success: function(data) {
                swal({
                  title: 'Wel Done!',
                  text: 'Status Updated successfully',
                  icon: "success",
                });
                location.reload();
            },error: function(data){
                swal({
                  title: 'Ooops!',
                  text: 'Something went wrong',
                  icon: "error",
                });
            }
        });
    }
    
</script>

@stop