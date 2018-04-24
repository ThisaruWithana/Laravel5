@extends('layouts.master') @section('title','User Insert')

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
			<li class="active">Add User</li>
		</ol>
	</section>
	<section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Add User</h3>
                <div class="box-tools pull-right">
                </div>
            </div>

            <div class="box-body">
                <form role="form" action="{{url('user/add')}}" class="form-validation" method="post" onSubmit="return checkPassword();">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">User Name</label>
                                <input type="text" class="form-control @if($errors->has('user_name')) error @endif"  id="user_name" name="user_name" placeholder="User Name"  value="{{Input::old('user_name')}}">
                                @if($errors->has('user_name'))
                                    <label id="label-error" style="color: red" class="error" for="user_name">{{$errors->first('user_name')}}</label>
                                @endif
                            </div>
                        </div>
                        
                    </div>    
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Password</label>
                                <input type="password" class="form-control @if($errors->has('password')) error @endif"  id="password" name="password" placeholder="Password">
                                @if($errors->has('password'))
                                    <label id="label-error" style="color: red" class="error" for="password">{{$errors->first('password')}}</label>
                                @endif
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Password Confirm</label>
                                <input type="password" class="form-control @if($errors->has('password_confirm')) error @endif"  id="password_confirm" name="password_confirm" placeholder="Password Confirm">
                                @if($errors->has('password_confirm'))
                                    <label id="label-error" style="color: red" class="error" for="password_confirm">{{$errors->first('password_confirm')}}</label>
                                @endif
                            </div>
                        </div>
                    </div>    
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Employee</label>
                                {!! Form::select('employee',$employee, Input::old('employee'),['class'=>'form-control','style'=>'width:100%;','data-placeholder'=>'Choose Employee','id'=>'employee']) !!}
                                @if($errors->has('employee'))
                                    <label id="label-error" style="color: red" class="error" for="employee">{{$errors->first('employee')}}</label>
                                @endif
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">User Role</label>
                                {!! Form::select('user_role',$role, Input::old('user_role'),['class'=>'form-control','style'=>'width:100%;','data-placeholder'=>'Choose User Role','id'=>'user_role']) !!}
                                @if($errors->has('user_role'))
                                    <label id="label-error" style="color: red" class="error" for="user_role">{{$errors->first('user_role')}}</label>
                                @endif
                            </div>
                        </div>
                    </div>    
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <button type="submit" class="btn btn-primary pull-right">
                                <i class="fa fa-floppy-o"></i> Save
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
    
    function checkPassword(){
        var pwd = $("#password").val();
        var re_pwd = $("#password_confirm").val();
        if(pwd != re_pwd){
            swal({
              title: "Ooops!",
              text: "Password does not match!",
              icon: "warning",
            });
            return false;
        }
        return true;
    }
        
</script>

@stop