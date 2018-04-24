@extends('layouts.master') @section('title','Menu Insert')

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
		<h1>Menu <small>Management</small> </h1>
		<ol class="breadcrumb">
			<li><a href="{{{url('/')}}}"><i class="fa fa-home mr5"></i>Home</a></li>
			<li><a href="{{{url('menu/list')}}}">Menu List</a></li>
			<li class="active">Add Menu</li>
		</ol>
	</section>
	<section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Add Menu</h3>
                <div class="box-tools pull-right">
                </div>
            </div>

            <div class="box-body">
                <form role="form" action="{{url('menu/add')}}" class="form-validation" method="post">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Menu Label</label>
                                <input type="text" class="form-control @if($errors->has('labels')) error @endif"  id="labels" name="labels" placeholder="Menu Label"  value="{{Input::old('labels')}}">
                                @if($errors->has('labels'))
                                    <label id="label-error" style="color: red" class="error" for="labels">{{$errors->first('labels')}}</label>
                                @endif
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label">Menu Icon</label>
                                {!! Form::select('menu_icon', $icon, Input::old('menu_icon'),['class'=>'form-control','style'=>'width:100%;font-family:\'FontAwesome\'','data-placeholder'=>'Choose Icon','id' => 'menu_icon','onchange' => 'setText();']) !!}
                                @if($errors->has('menu_icon'))
                                    <label id="label-error" style="color: red" class="error" for="label">{{$errors->first('menu_icon')}}</label>
                                @endif
                            </div>
                        </div>
                    </div>    
                    <div class="row">    
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Menu URL</label>
                                <input type="text" class="form-control @if($errors->has('menu_url')) error @endif" name="menu_url" id="menu_url" placeholder="Ex: menu/add" value="{{Input::old('menu_url')}}">
                                @if($errors->has('menu_url'))
                                    <label id="label-error" style="color: red" class="error" for="label">{{$errors->first('menu_url')}}</label>
                                @endif
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="form-group">
                                <label class="control-label required">Menu Parent</label>
                                {!! Form::select('parent_menu',$menus, Input::old('parent_menu'),['class'=>'form-control','style'=>'width:100%;','data-placeholder'=>'Choose Parent Menu','id'=>'parent_menu']) !!}
                            </div>  
                        </div>
                    </div>    
                    <div class="row">    
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="form-group">
                                <label class="control-label required">Permissions</label>
                                {!! Form::select('permission[]',$role, Input::old('permission'),['class'=>'form-control','style'=>'width:100%;','data-placeholder'=>'Choose Parent Menu','multiple'=>'multiple','id'=>'permission']) !!}
                                @if($errors->has('permission'))
                                    <label id="label-error" style="color: red" class="error" for="label">{{$errors->first('permission')}}</label>
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