@extends('layouts.master') @section('title','Employee List')

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
			<li><a href="{{{url('menu/add')}}}">Add Employee</a></li>
			<li class="active">Employee List</li>
		</ol>
	</section>
	<section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Employee List</h3>
                <div class="box-tools pull-right">
                </div>
            </div>

            <div class="box-body">
                <div class="row">
                    <div class="table-wrapper">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr class="table-header">
                                    <th rowspan="2" class="text-center">Employee Code</th>
                                    <th rowspan="2" class="text-center">Name</th>
                                    <th rowspan="2" class="text-center">Address</th>
                                    <th rowspan="2" class="text-center">Mobile</th>
                                    <th rowspan="2" class="text-center">Landline</th>
                                    <th rowspan="2" class="text-center">E-mail</th>
                                    <th rowspan="2" class="text-center">N.I.C.</th>
                                    <th rowspan="2" class="text-center">Status</th>
                                    <th rowspan="2" class="text-center">Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($employee as $value)
                                    <tr>
                                        <td style="text-align: left">{{ $value->short_code }}</td>
                                        <td style="text-align: left">{{ $value->first_name }} {{ $value->last_name }}</td>
                                        <td style="text-align: left">{{ $value->address }}</td>
                                        <td style="text-align: left">{{ $value->mobile_no }}</td>
                                        <td style="text-align: left">{{ $value->landline_no }}</td>
                                        <td style="text-align: left">{{ $value->email }}</td>
                                        <td style="text-align: left">{{ $value->nic }}</td>
                                        <td style="text-align: center">
                                            <input type="checkbox" id="status_<?php echo $i; ?>" name="status_<?php echo $i; ?>" onchange="changeStatus(<?php echo $i; ?>,<?php echo $value->id; ?>)" @if($value->status == 1) checked @endif data-toggle="toggle" data-on="Active" data-off="Deactive" data-size="mini" data-onstyle="success">
                                        </td>
                                        <td style="text-align: center;">
                                            <a title="Edit" href="{{url('employee/edit')}}/{{ $value->id }}">
                                                <i class="fa fa-pencil"></i>
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
                            {{ $employee->links() }}    
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
            url: "{{url('employee/changeStatus')}}",
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