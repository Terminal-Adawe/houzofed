<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Shop_detail;
use App\Item;

class shopDetailsPageController extends Controller
{
    //
    public function showDetails(){
    	$data['shopdetails'] = Shop_detail::first();

    	return view('admin.shopDetails')->with('data',$data);
    }

}
