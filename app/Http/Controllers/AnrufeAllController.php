<?php

namespace App\Http\Controllers;

//use App\Datatable;
use App\Http\Requests;
use Illuminate\Http\Request;
use DataTables;
use DB;
use Input;
use App\Models\AnrufeAll;
//use Yajra\Datatables\Datatables;

class AnrufeAllController extends Controller
{
    public function index() {
		
		return view('anrufe_all.index');	
	}
	
	public function dtAjax(Request $request)
    {
		$data = AnrufeAll::get();

        return Datatables::of($data)
            ->editColumn('date', function ($data) {
                //return $data->call_datetime;
				
				return date('Y-m-d', strtotime($data->call_datetime));
            })
			->editColumn('time', function ($data) {
                //return $data->call_datetime;
				return date('H:i', strtotime($data->call_datetime));
            })
			->editColumn('postal_code', function ($data) {
                return '';
            })
			->editColumn('duration', function ($data) {
                return $data->call_duration;
            })
			->editColumn('direction', function ($data) {
                return $data->call_direction;
            })
			->editColumn('int_number', function ($data) {
                return $data->internal_number;
			})
			->editColumn('int_name', function ($data) {
                
				return $data->internal_number;
            })
			->editColumn('ext_number', function ($data) {
                
				return $data->internal_number;
            })
			->editColumn('ext_name', function ($data) {
                
				return $data->internal_number;
            })
			->editColumn('transfer_from', function ($data) {
                
				return $data->call_transferred_from;
            })
			->editColumn('answered', function ($data) {
                
				return $data->call_answered;
            })
			->editColumn('transfer_to', function ($data) {
                
				return $data->call_transferred_to;
            })
			->editColumn('pickuped_by', function ($data) {
                
				return $data->call_pickuped_by;
            })
			->make(true);
	}
}
