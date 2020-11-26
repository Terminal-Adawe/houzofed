<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Category;
use App\Shop_detail;

class addCategoryPageController extends Controller
{
    //
    public function addCategory(Request $request){
    	$data['categories'] = Category::orderBy('created_at','desc')
    		->get();

    	$data['shopdetails'] = Shop_detail::first();


    	return view('admin.addCategory')->with('data',$data);
                                
    }
}
