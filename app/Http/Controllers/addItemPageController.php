<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Item;
use App\ItemImage;
use App\Shop_detail;

class addItemPageController extends Controller
{
    //
    public function addItem(Request $request){
    	$data['items'] = Item::orderBy('items.created_at','desc')->join('item_images','items.item_image_id','=','item_images.id')
    		->join('item_prices','item_prices.item_id','=','items.id')
    		->join('item_quantity','item_quantity.item_id','=','items.id')
            ->join('currencies','currencies.id','=','item_prices.currency_id')
    		->select('*','items.id as it_id','currencies.id as cr_id')
    		->get();

    	$data['categories'] = DB::table('categories')
                                ->get();

        $data['features'] = DB::table('features')
                                ->get();

        $data['purposes'] = DB::table('purposes')
                                ->get();

        $data['currencies'] = DB::table('currencies')
                                ->get();

        $data['shopdetails'] = Shop_detail::first();

    	return view('admin.addItem')->with('data',$data);
                                
    }
}
