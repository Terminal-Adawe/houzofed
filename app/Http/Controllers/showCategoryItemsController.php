<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Shop_detail;
use App\Cart;
use App\Feature;
use App\Purpose;
use App\Item;
use DB;

class showCategoryItemsController extends Controller
{
    //
    public function categoryid(Request $request){

        $sessionkey = $request->session()->get('_token', 'default');

        $data['cart'] = [];
        $data['cartCount'] = 0;
        $data['categories']= Category::all();

        if(Cart::where('sessionid',$sessionkey)->exists()){
            $cartItems = Cart::where('sessionid',$sessionkey)->first();

            if(trim($cartItems->payload)!=NULL){
                $data['cart'] = json_decode($cartItems->payload);
                $data['cartCount'] = count(json_decode($cartItems->payload));
            } else {$data['cartCount'] = 0;}

        } else {
            $cartData = ['sessionid'=>$sessionkey];

            DB::table('carts')->insert($cartData);
        }

        $data['shopdetails'] = Shop_detail::first();

        $data['categoryid'] = $request->categoryid;
        $data['type'] = $request->type;
        $data['extracategory'] = $request->extracategory;

        return view('items')->with('data',$data);
    }

    public function showItems (Request $request){
        $categoryid = $request->id;
        $type = trim($request->type);
        $extracategory = $request->extracategory;
        // $data['items'] = "";


        if($type == "category"){
            $data['categories'] = Category::all();

            $data['items'] = Category::join('items','items.category','=','categories.category_name')
                ->join('item_prices','item_prices.item_id','=','items.id')
                ->join('item_images','items.item_image_id','=','item_images.id')
                ->join('item_quantity','items.id','=','item_quantity.item_id')
                ->select('*','items.id as iid','item_images.image_path as item_image_path', 'categories.id as categoryid')
                ->get();

        }


        if($type == "feature"){
            $data['categories'] = Feature::select('*','feature as category_name')
                                    ->get();

            $data['items'] = Feature::join('items','items.feature','=','features.feature')
                ->join('item_prices','item_prices.item_id','=','items.id')
                ->join('item_images','items.item_image_id','=','item_images.id')
                ->join('item_quantity','items.id','=','item_quantity.item_id')
                ->select('*','items.id as iid','item_images.image_path as item_image_path', 'features.id as categoryid')
                ->get();
        }

        if($type == "purpose"){
            $data['categories'] = Purpose::select('*','purpose as category_name')
                                    ->get();

            $data['items'] = Purpose::join('items','items.suitable_purposes','=','purposes.purpose')
                ->join('item_prices','item_prices.item_id','=','items.id')
                ->join('item_images','items.item_image_id','=','item_images.id')
                ->join('item_quantity','items.id','=','item_quantity.item_id')
                ->select('*','items.id as iid','item_images.image_path as item_image_path', 'purposes.id as categoryid')
                ->get();

        }

        if($type == "categories-purpose"){
            $data['categories'] = Purpose::select('*','purpose as category_name')
                                    ->get();

            $data['items'] = Purpose::join('items','items.suitable_purposes','=','purposes.purpose')
                ->join('item_prices','item_prices.item_id','=','items.id')
                ->join('item_images','items.item_image_id','=','item_images.id')
                ->join('item_quantity','items.id','=','item_quantity.item_id')
                ->join('categories','items.category','categories.category_name')
                ->where('categories.id',$extracategory)
                ->select('*','items.id as iid','item_images.image_path as item_image_path', 'purposes.id as categoryid')
                ->get();
        }

        if($type == "categories-feature"){
            $data['categories'] = Feature::select('*','feature as category_name')
                                    ->get();

            $data['items'] = Feature::join('items','items.feature','=','features.feature')
                ->join('item_prices','item_prices.item_id','=','items.id')
                ->join('item_images','items.item_image_id','=','item_images.id')
                ->join('item_quantity','items.id','=','item_quantity.item_id')
                ->join('categories','items.category','categories.category_name')
                ->where('categories.id',$extracategory)
                ->select('*','items.id as iid','item_images.image_path as item_image_path', 'features.id as categoryid')
                ->get();
        }
        

        $data['shopdetails'] = Shop_detail::first();
        
        // return view('items')->with('data',$data);
        return $data;
    }

    public function getFeatures(Request $request){
        $categoryid = $request->id;

        $data['features'] = Feature::join('items','items.feature','features.feature')
                                ->join('categories','categories.category_name','items.category')
                                ->select('features.id as fid','features.feature')
                                ->where('categories.id','=',$categoryid)
                                ->distinct()
                                ->get();

        $data['purposes'] = Purpose::join('items','items.suitable_purposes','purposes.purpose')
                                ->join('categories','categories.category_name','items.category')
                                ->select('purposes.id as pid','purposes.purpose')
                                ->where('categories.id','=',$categoryid)
                                ->distinct()
                                ->get();


        return $data;
    }
}
