@extends('layouts.master') @section('title','User Update')

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
			<li><a href="{{{url('user/list')}}}">User List</a></li>
			<li class="active">Update User</li>
		</ol>
	</section>
	<section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Update User</h3>
                <div class="box-tools pull-right">
                </div>
            </div>

            <div class="box-body">
                <form role="form" action="{{url('user/update')}}" class="form-validation" method="post">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Employee</label>
                                {!! Form::select('employee',$employee, $exist->employee_id,['class'=>'form-control','style'=>'width:100%;','data-placeholder'=>'Choose Employee','id'=>'employee']) !!}
                                @if($errors->has('employee'))
                                    <label id="label-error" style="color: red" class="error" for="employee">{{$errors->first('employee')}}</label>
                                @endif
                                <input type="hidden" name="user_id" id="user_id" value="{{ $id }}">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">User Role</label>
                                {!! Form::select('user_role',$role, $exist->role_id,['class'=>'form-control','style'=>'width:100%;','data-placeholder'=>'Choose User Role','id'=>'user_role']) !!}
                                @if($errors->has('user_role'))
                                    <label id="label-error" style="color: red" class="error" for="user_role">{{$errors->first('user_role')}}</label>
                                @endif
                            </div>
                        </div>
                    </div>   
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <button type="submit" class="btn btn-primary pull-right">
                                <i class="fa fa-floppy-o"></i> Update
                            </button>
                        </div>      
                    </div> 
                </form>
            </div> <!-- /.box-body -->
        </div><!-- /.box -->
    </section><!-- /.content -->

@stop

@section('js')

<script type="text/javascript">
    $("#permission").multiSelect();
    
</script>

@stop