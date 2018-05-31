<!doctype html>

<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>
	
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

		<link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="{{ asset('la-assets/plugins/datatables/datatables.min.css') }}"/>
	<link href="{{ asset('assets/css/pages/tables.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/css/recruitment/recruitment.css') }}" rel="stylesheet" type="text/css"/>
	<link href="{{ asset('assets/register/dist/css/datatable/dataTables.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/register/dist/css/datatable/dataTablesCustom.css') }}" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="{{ asset('assets/js/bootstrap.min.js') }}" ></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/jquery.dataTables.js') }}" ></script>
    <script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/dataTables.bootstrap.js') }}" ></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/dataTables.buttons.js') }}" ></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/buttons.colVis.js') }}" ></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/buttons.html5.js') }}" ></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/buttons.bootstrap.js') }}" ></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/buttons.print.js') }}" ></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/jszip.min.js') }}" ></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/pdfmake.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/vfs_fonts.js') }}"></script>
	<!--- button code css, pdf------>
	
	<script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/dataTables.bootstrap.js') }}" ></script>
    <script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/dataTables.responsive.js') }}" ></script>
	<!----------- Yajra----------->
	
    </head>
    <body>
        <div class="container-fluid">
			<div class="row">
				@if (Route::has('login'))
					<div class="top-right links">
						@auth
							<a href="{{ url('/home') }}">Home</a>
						@else
							<a href="{{ route('login') }}">Login</a>
							<a href="{{ route('register') }}">Register</a>
						@endauth
					</div>
				@endif

				<div class="content">
					<div class="top_content">
						<div class="row">
							<div class="col-md-2">
								<div class="row">
									<div class="col-md-12" style="margin-bottom:10px;">
										<div class="input-group">
											<input type="text" class="form-control" placeholder="01/05/2018">
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
									
									<div class="col-md-12">
										<div class="input-group">
											<input type="text" class="form-control" placeholder="01/06/2018">
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>		
							</div>
							<div class="col-md-2">
								<div class="row">
									<input type="radio" name="gender" value="male" checked> Both<br>
									<input type="radio" name="gender" value="female"> 1 - in<br>
									<input type="radio" name="gender" value="other"> 2 - out 
								</div>	
							</div>
							<div class="col-md-8 pull-right">
								<div class="row">
									<div class="col-md-3">
										<input type="search" class="form-control input-sm" placeholder="Search" aria-controls="table_1">
									</div>
									<div class="col-md-3">
										<input type="search" class="form-control input-sm" placeholder="Search" aria-controls="table_1">
									</div>
									<div class="col-md-3">
										<input type="search" class="form-control input-sm" placeholder="Search" aria-controls="table_1">
									</div>
									<div class="col-md-3">
										<input type="search" class="form-control input-sm" placeholder="Search" aria-controls="table_1">
									</div>
									
								</div>
							</div>
						</div>
					</div>
					<table id="table_1" class="table table-striped table-bordered table-diff" style="width:100%;">
						<thead>
							<tr>
								<th>Date</th>
								<th>Time</th>
								<th>Postal Code</th>
								<th>Duration</th>
								<th>Direction</th>
								<th>int.Number</th>
								<th>int.Name</th>
								<th>ext.Number</th>
								<th>ext.Name</th>
								<th>Transfer From</th>
								<th>Answered</th>
								<th>Transfer To</th>
								<th>Pickuped By</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>
					
					<div class="bottom_content">
						<div class="bottom_content_left">
							<div class="row">
								<div class="col-md-2 text-center">
									<span class="bottom-span">242</span>
									<p class="bottom_p">total calls</p>
								</div>
								<div class="col-md-2 text-center">
									<span class="bottom-span">153:10 h:mm</span>
									<p class="bottom_p">Sum Duration</p>
								</div>
								<div class="col-md-2 text-center">
									<span class="bottom-span">2:17 m:ss</span>
									<p class="bottom_p">per call</p>
								</div>
							</div>
						<div>
						<div class="row">
							<div class="col-md-12 text-center">
								<button class="btn btn-default">Reset all filters to default</button>	
								<button class="btn btn-primary">Reset all filters to default</button>	
							</div>
							<div class="col-md-12">
								<label> Additional Filters</label>
								<div>
									<input type="checkbox" name="vehicle" value="Bike"> only answered<br>
									<input type="checkbox" name="vehicle" value="Car" checked> Duration >0<br>
								</div>	
							</div>
						</div>
					</div>	
				</div>
			</div>	
        </div>
		<script>
			Url = '{!! url("anrufe_all/dtAjax") !!}';
			dataColumns = [
					{data: 'date', date: 'Date'},
					{data: 'time', time: 'time'},
					{data: 'postal_code', postal_code: 'postal_code'},
					{data: 'duration', duration: 'duration'},
					{data: 'direction', direction: 'direction'},
					{data: 'int_number', int_number: 'int_number'},
					{data: 'int_name', int_name: 'int_name'},
					{data: 'ext_number', ext_number: 'ext_number'},
					{data: 'ext_name', ext_name: 'ext_name'},
					{data: 'transfer_from', transfer_from: 'transfer_from'},
					{data: 'answered', answered: 'answered'},
					{data: 'transfer_to', transfer_to: 'transfer_to'},
					{data: 'pickuped_by', pickuped_by: 'pickuped_by'},
				];
			listingRecord('table_1', Url, dataColumns);
			
			function listingRecord(ids, Url, dataColumns) {
				var table = $("#"+ids).DataTable({
					dom: 'lBfrtip',
					destroy: true,
					paging: true,
					filter: true,
					info: true,
					buttons: [ 
						{
							extend: 'collection',
							text: 'Export <span class="caret"></span>',
							buttons: ['copy', 'csv', 'excel', 'pdf','print']
						}
					],
					processing: true,
					serverSide: true,
					ajax: Url,
					columns: dataColumns
				});
			}
		</script>
		
		
    </body>
</html>
