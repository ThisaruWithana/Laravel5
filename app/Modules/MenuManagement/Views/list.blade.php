@extends('layouts.master') @section('title','Menu List')

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

   .table{
        width: 94%;
   }

</style>  
@stop

@section('content')

	<section class="content-header">
		<h1>Menu <small>Management</small> </h1>
		<ol class="breadcrumb">
			<li><a href="{{{url('/')}}}"><i class="fa fa-home mr5"></i>Home</a></li>
			<li><a href="{{{url('menu/add')}}}">Add Menu</a></li>
			<li class="active">Menu List</li>
		</ol>
	</section>
	<section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Menu List</h3>
                <div class="box-tools pull-right">
                </div>
            </div>

            <div class="box-body">
                <div class="row">
                    <div class="table-wrapper container">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr class="table-header">
                                    <th rowspan="2" class="text-center">Label</th>
                                    <th rowspan="2" class="text-center">Icon</th>
                                    <th rowspan="2" class="text-center">Parent</th>
                                    <th rowspan="2" class="text-center">Status</th>
                                    <th colspan="2" class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($data as $value)
                                    <tr>
                                        <td style="text-align: left">{{ $value->menu_name }}</td>
                                        <td style="text-align: left"><i class="{{ $value->icon }}"></i> {{ $value->icon }}</td>
                                        <td style="text-align: left">{{ $value->parent }}</td>
                                        <td style="text-align: center">
                                            <input type="checkbox" id="status_<?php echo $i; ?>" name="status_<?php echo $i; ?>" onchange="changeStatus(<?php echo $i; ?>,<?php echo $value->id; ?>)" @if($value->status == 1) checked @endif data-toggle="toggle" data-on="Active" data-off="Deactive" data-size="mini" data-onstyle="success">
                                        </td>
                                        <td style="text-align: center;">
                                            <a title="Edit" href="{{url('menu/edit')}}/{{ $value->id }}">
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
                            <?php echo $data->render(); ?>
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
            url: "{{url('menu/changeStatus')}}",
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