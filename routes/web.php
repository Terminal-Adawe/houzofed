<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Http\Request;
use App\Transaction;
use App\Shop_detail;
use App\Purpose;
use App\Category;
use App\User;
use App\Cart;
use App\Item;


// Route::get('/shop/{path?}', function () {
//     return view('app');
// });

// Route::get('/{path?}', function () {
//     return view('app');
// });

Route::get('/', function (Request $request) {
	$sessionkey = $request->session()->get('_token', 'default');

	$data['purposes']= Purpose::get();

	$data['shopdetails'] = Shop_detail::first();

	$data['categories']= Category::all();

	$data['newarrivals'] = Category::join('items','items.category','=','categories.category_name')
    		->join('item_prices','item_prices.item_id','=','items.id')
    		->join('item_images','items.item_image_id','=','item_images.id')
    		->join('item_quantity','items.id','=','item_quantity.item_id')
    		->select('*','items.id as iid','item_images.image_path as item_image_path', 'categories.id as categoryid')
    		->orderBy('items.created_at','desc')
    		->take(12)
    		->get();

    $data['limited'] = Category::join('items','items.category','=','categories.category_name')
            ->join('item_prices','item_prices.item_id','=','items.id')
            ->join('item_images','items.item_image_id','=','item_images.id')
            ->join('item_quantity','items.id','=','item_quantity.item_id')
            ->select('*','items.id as iid','item_images.image_path as item_image_path', 'categories.id as categoryid')
            ->orderBy('item_quantity.quantity_available','desc')
            ->take(4)
            ->get();

	$data['cart'] = [];
    $data['cartCount'] = 0;

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

    return view('index')->with('data',$data);
});

Route::get('/admin2', function () {
	// $data['count'] = Transaction::count();
	$data['count'] = Transaction::selectRaw('COUNT(*) as count,sum(quantity) as quantity,sum(total_price) as total_price')
		->first();

	$data['shopdetails'] = Shop_detail::first();

	$data['customers'] = User::selectRaw('COUNT(*) as numberofcustomers')
							->first();

    // return $data2->count." and ".$data['count'];

    return view('admin.index')->with('data',$data);
});

Route::get('/admin2/forms-advanced','routeController@advancedForm');
Route::get('/admin2/forms-basic','routeController@basicForm');
Route::get('/admin2/ui-grids','routeController@uigrid');
Route::get('/admin2/addItem','addItemPageController@addItem');
Route::get('/admin2/addCategory','addCategoryPageController@addCategory');
Route::get('/admin2/addFeatures','addFeaturesPageController@addFeatures');
Route::get('/admin2/shopDetails','shopDetailsPageController@showDetails');
Route::get('/admin2/paymentDetails','paymentDetailsPageController@showDetails');
Route::get('/admin2/customers','customersPageController@showCustomers');
Route::get('/admin2/about','aboutPageController@showDetails');
Route::get('/admin2/legal','aboutPageController@showLegalDetails');
Route::get('/admin2/transactions','getTransactionsController@showDetails');
Route::get('/admin2/FAQs','customerServiceController@showFAQsAdmin');
Route::post('/admin2/postAnswer','customerServiceController@postAnswer');

Route::post('/admin2/postItem','postItemController@insertItem');
Route::post('/admin2/postCategory','postItemController@insertCategory');
Route::post('/admin2/postFeature','postItemController@insertFeature');
Route::post('/admin2/postPurpose','postItemController@insertPurpose');
Route::get('/admin2/selecteditems','removeItemsController@removeitems');
Route::get('/admin2/saveItem','saveItemController@saveItem');
Route::get('/admin2/saveMore','saveItemController@saveMore');
Route::get('/admin2/itemimages','ShowItemImagesController@getItemImages');
Route::post('/admin2/saveMoreImages','saveItemController@saveMoreImages');
Route::post('/admin2/removeImage','removeItemsController@removeImage');
Route::post('/admin2/saveShopDetails','savePersonalDetailsController@saveShopDetails');
Route::post('/admin2/saveShopAboutDetails','savePersonalDetailsController@saveShopAboutDetails');
Route::post('/admin2/saveShopLegalDetails','savePersonalDetailsController@saveShopLegalDetails');
Route::post('/admin2/savePaymentDetails','savePersonalDetailsController@savePaymentDetails');
Route::post('/admin2/processTransaction','processTransactionController@processTransaction');



Route::get('/categories','showCategoryItemsController@categoryid');
// Route::get('/categories','showCategoryItemsController@showItems');
Route::get('/viewItem','viewItemController@viewItem');
Route::get('/viewItemdesc/{itemid}','viewItemController@viewItem');

Route::get('/cart','cartController@cart');
Route::get('/checkout','checkoutController@checkout');
Route::get('/about','aboutPageController@showAbout');
Route::get('/termsandconditions','aboutPageController@showAbout');
Route::get('/privacypolicy','aboutPageController@showAbout');
Route::get('/customerservice','customerServiceController@showDetails');
Route::post('/addComment','customerServiceController@addComment');
Route::get('/FAQs','customerServiceController@showFAQs');
Route::get('/newsletter-subscribe','newsletterController@subscribe');

Route::post('/receipt','checkoutController@placeorder');
Route::get('/receipt',function(){
	return redirect('/');
});

Route::post('/removeCartItem','cartController@removeItem');

Route::get('/logout',function (Request $request) {
		
		Auth::logout();

    	return redirect('/');

	// return view('auth.login')->with('data',$data);
});

Route::get('/myaccount','myaccountController@myaccount');


// Route::group(['prefix' => 'admin'], function () {
//     Voyager::routes();
// });

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
