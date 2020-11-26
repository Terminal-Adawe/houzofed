<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use \App\Item;
use DB;

class routeController extends Controller
{
    //
    public function advancedForm(){
    	return view('admin.forms-advanced');
    }

    public function basicForm(){
    	return view('admin.forms-basic');
    }

    public function uigrid(){
        return view('admin.uigrid');
    }

}