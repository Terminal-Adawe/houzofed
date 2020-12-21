<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Newsletter;

class newsletterController extends Controller
{
    //
    public function subscribe(Request $request){
    	$email = $request->email;

    	$data = ['email'=>$email,'active'=>1];

    	Newsletter::insert($data);

    	return redirect('/')->with('status','1');
    }
}
