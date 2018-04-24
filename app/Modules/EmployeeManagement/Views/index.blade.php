@extends('layouts.master') @section('title','Employee Insert')

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
		<h1>Employee <small>Management</small> </h1>
		<ol class="breadcrumb">
			<li><a href="{{{url('/')}}}"><i class="fa fa-home mr5"></i>Home</a></li>
			<li><a href="{{{url('employee/list')}}}">Employee List</a></li>
			<li class="active">Add Employee</li>
		</ol>
	</section>
	<section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Add Employee</h3>
                <div class="box-tools pull-right">
                </div>
            </div>

            <div class="box-body">
                <form role="form" action="{{url('employee/add')}}" class="form-validation" method="post">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">First Name</label>
                                <input type="text" class="form-control @if($errors->has('first_name')) error @endif"  id="first_name" name="first_name" placeholder="First Name"  value="{{Input::old('first_name')}}">
                                @if($errors->has('first_name'))
                                    <label id="label-error" style="color: red" class="error" for="first_name">{{$errors->first('first_name')}}</label>
                                @endif
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Last Name</label>
                                <input type="text" class="form-control @if($errors->has('last_name')) error @endif"  id="last_name" name="last_name" placeholder="Last Name"  value="{{Input::old('last_name')}}">
                                @if($errors->has('last_name'))
                                    <label id="label-error" style="color: red" class="error" for="last_name">{{$errors->first('last_name')}}</label>
                                @endif
                            </div>
                        </div>
                    </div>    
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Mobile No.</label>
                                <input type="text" class="form-control @if($errors->has('mobile_no')) error @endif"  id="mobile_no" name="mobile_no" placeholder="Mobile No."  value="{{Input::old('mobile_no')}}">
                                @if($errors->has('mobile_no'))
                                    <label id="label-error" style="color: red" class="error" for="mobile_no">{{$errors->first('mobile_no')}}</label>
                                @endif
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Landline No.</label>
                                <input type="text" class="form-control @if($errors->has('landline_no')) error @endif"  id="landline_no" name="landline_no" placeholder="Land Phone No."  value="{{Input::old('landline_no')}}">
                                @if($errors->has('landline_no'))
                                    <label id="label-error" style="color: red" class="error" for="landline_no">{{$errors->first('landline_no')}}</label>
                                @endif
                            </div>
                        </div>
                    </div>    
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">E-mail</label>
                                <input type="text" class="form-control @if($errors->has('email')) error @endif"  id="email" name="email" placeholder="E-mail"  value="{{Input::old('email')}}">
                                @if($errors->has('email'))
                                    <label id="label-error" style="color: red" class="error" for="email">{{$errors->first('email')}}</label>
                                @endif
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">N.I.C</label>
                                <input type="text" class="form-control @if($errors->has('nic')) error @endif"  id="nic" name="nic" placeholder="N.I.C. No."  value="{{Input::old('nic')}}">
                                @if($errors->has('nic'))
                                    <label id="label-error" style="color: red" class="error" for="nic">{{$errors->first('nic')}}</label>
                                @endif
                            </div>
                        </div>
                    </div>    
                    
                    <div class="row">    
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Address</label>
                                <textarea class="form-control @if($errors->has('address')) error @endif" id="address" name="address" placeholder="Address">{{Input::old('address')}}</textarea>                                    
                                @if($errors->has('address'))
                                    <label id="label-error" style="color: red" class="error" for="address">{{$errors->first('address')}}</label>
                                @endif
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Short Code</label>
                                <input type="text" class="form-control @if($errors->has('short_code')) error @endif"  id="short_code" name="short_code" placeholder="Short Code"  value="{{Input::old('short_code')}}">
                                @if($errors->has('short_code'))
                                    <label id="label-error" style="color: red" class="error" for="short_code">{{$errors->first('short_code')}}</label>
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
    $("#permission").multiSelect();
    
</script>

@stop