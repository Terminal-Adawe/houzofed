<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use DB;
use App\Item;
use App\ItemImage;

class postItemController extends Controller
{
    //
    public function insertItem(Request $request){
    	$itemname = $request->itemname;
    	$category = $request->category;
    	$quantity = $request->quantity;
    	$colors = $request->colors;
    	$price = $request->price;
    	$sizes = $request->sizes;
    	$description = $request->description;
    	$feature = $request->feature;
    	$purpose = $request->purpose;
      $currencyid = 1;

      $defaultImageId = "";

      $data=['item_name'=>$itemname,'description'=>$description,'category'=>$category,'suitable_purposes'=>$purpose,'feature'=>$feature,'available_sizes'=>$sizes,'available_colors'=>$colors];

        // DB::table('items')->insert($data);
      $itemid = DB::table('items')->insertGetId($data);

      if($files=$request->file('imageFiles')){
        $x = 1;
        foreach($files as $uploadFile){
            $filename  = time().$uploadFile->getClientOriginalName();
            $extension = $uploadFile->getClientOriginalExtension();
            $modifiedFilepath = 'item-images/'.$filename;
            // $picture   = date('His').'-'.$filename;
      
      //Save files in below folder path, that will make in public folder
            // $file->move(public_path('item-images'), $picture);
            Storage::disk('local')->putFileAs(
                'public/item-images',
                $uploadFile,
                $filename
            );

            $imageId = $this->saveImage($itemid,$modifiedFilepath,$x);

            if($x==1){
              $defaultImageId = $imageId;
            }
            $x=0;
        }
      }

      	// $upload = new Upload;
      	// $upload->filename = $filename;

      	// $upload->save();


      	Item::find($itemid)
      		->update(['item_image_id'=>$defaultImageId]);

      	$this->savePrice($itemid,$price,$currencyid);

      	$this->saveQuantity($itemid,$quantity);


    	// return view('admin/addItem')->with('data',$data);
    	return redirect('admin2/addItem');
    }


    public function savePrice($itemid,$itemprice,$currencyid){
    	$data=['item_id'=>$itemid,'item_price'=>$itemprice,'currency_id'=>$currencyid];

    	DB::table('item_prices')->insert($data);
    }

    public function saveQuantity($itemid,$quantity){
    	$data=['item_id'=>$itemid,'quantity_available'=>$quantity];

    	DB::table('item_quantity')->insert($data);
    }



    /* Save image in image table. This will save the image
    in the database.
    */
    public function saveImage($itemid,$imagepath,$isDefault){
        $data=['item_id'=>$itemid,'image_path'=>$imagepath,'is_default'=>$isDefault];

        // DB::table('item_images')->insert($data);

        $imageid = DB::table('item_images')->insertGetId($data);

        return $imageid;
    } // Fin



    // Categories
    public function insertCategory(Request $request){
      $categoryName = $request->categoryname;
      $modifiedFilepath="";

      if($request->hasFile('imageFile')){

      $uploadFile = $request->file('imageFile');
      $filename = time().$uploadFile->getClientOriginalName();
      $modifiedFilepath = 'category-images/'.$filename;
      $currencyid = 1;

      Storage::disk('local')->putFileAs(
          'public/category-images',
          $uploadFile,
          $filename
        );
      }

      $data = ['category_name'=>$categoryName,'image_path'=>$modifiedFilepath];

      $categoryid = DB::table('categories')->insertGetId($data);

      return redirect('admin2/addCategory');

    }

    // Features
    public function insertFeature(Request $request){
      $featureName = $request->featurename;
      $modifiedFilepath="";

      if($request->hasFile('imageFile')){
      $uploadFile = $request->file('imageFile');
      $filename = time().$uploadFile->getClientOriginalName();
      $modifiedFilepath = 'feature-images/'.$filename;
      $currencyid = 1;

      Storage::disk('local')->putFileAs(
          'public/feature-images',
          $uploadFile,
          $filename
        );
      }
      
      $data = ['feature'=>$featureName,'image_path'=>$modifiedFilepath];

      $featureid = DB::table('features')->insertGetId($data);

      return redirect('admin2/addFeatures');

    }

    // Purposes
    public function insertPurpose(Request $request){
      $purposeName = $request->purposename;
      $modifiedFilepath="";

      if($request->hasFile('imageFile')){
      $uploadFile = $request->file('imageFile');
      $filename = time().$uploadFile->getClientOriginalName();
      $modifiedFilepath = 'purpose-images/'.$filename;
      $currencyid = 1;

      Storage::disk('local')->putFileAs(
          'public/purpose-images',
          $uploadFile,
          $filename
        );
      }

      $data = ['purpose'=>$purposeName,'image_path'=>$modifiedFilepath];

      $purposeid = DB::table('purposes')->insertGetId($data);

      return redirect('admin2/addFeatures');

    }
}
