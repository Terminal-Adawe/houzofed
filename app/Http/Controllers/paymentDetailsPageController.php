<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Payment_detail;
use App\Shop_detail;

class paymentDetailsPageController extends Controller
{
    //
    public function showDetails(){
    	$data = Payment_detail::first();

    	$data['shopdetails'] = Shop_detail::first();

    	return view('admin.paymentDetails')->with('data',$data);
    }
}
