<!doctype html>

<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
	
	<link rel="stylesheet" type="text/css" href="{{ asset('la-assets/plugins/datatables/datatables.min.css') }}"/>
	<link href="{{ asset('assets/css/pages/tables.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/register/dist/css/datatable/dataTables.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/register/dist/css/datatable/dataTablesCustom.css') }}" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
        <div class="flex-center position-ref full-height">
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
					paging: true,
					filter: true,
					info: true,
					buttons: [ 
						{
							extend: 'collection',
							text: '<i class="glyphicon glyphicon-export"></i> <span class="caret"></span>',
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
