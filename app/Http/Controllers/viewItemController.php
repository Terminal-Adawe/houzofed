<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Item;
use App\Shop_detail;
use App\Cart;
use App\Category;
use DB;

class viewItemController extends Controller
{
    //
    public function viewItem(Request $request){
        $sessionkey = $request->session()->get('_token', 'default');
    	$itemid = $request->itemid;
    	$data['cart'] = [];
        $data['cartCount'] = 0;

        if(Cart::where('sessionid',$sessionkey)->exists()){
            $cartItems = Cart::where('sessionid',$sessionkey)->first();
            $data['cart'] = json_decode($cartItems->payload);

            if($cartItems->payload!=NULL){
                $data['cartCount'] = count(json_decode($cartItems->payload));
            } else {$data['cartCount'] = 0;}

        } else {
            $cartData = ['sessionid'=>$sessionkey];

            DB::table('carts')->insert($cartData);
        }
    	

    	$data['item'] = Item::join('item_images','items.item_image_id','=','item_images.id')
    				->join('item_prices','item_prices.item_id','=','items.id')
    				->join('item_quantity','items.id','=','item_quantity.item_id')
    				->where('items.id','=',$itemid)
    				->select('*','items.id as iid')
    				->get();

    	$data['images'] = DB::table('item_images')
    					->where('item_id','=',$itemid)
    					->get();

    	$data['shopdetails'] = Shop_detail::first();

        $data['categories'] = Category::all();

    	// echo $data['item'][0]->category;

    	$data['relatedItems'] = Item::join('item_images','items.item_image_id','=','item_images.id')
    				->join('item_prices','item_prices.item_id','=','items.id')
    				->join('item_quantity','items.id','=','item_quantity.item_id')
    				->where('items.category','=',$data['item'][0]->category)
    				->select('*','items.id as iid')
    				// ->orderBy('items.created_at','desc')
    				->take(4)
    				->get();
    				// ->take(4);

    	// echo $data['cart'];

    	return view('viewItem')->with('data',$data);

    	// echo $data['relatedItems'];
    }
}
