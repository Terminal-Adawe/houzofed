<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


	Route::get('/categories/items/{id}&{type}', 'showCategoryItemsController@showItems');
    Route::get('/updateCart', 'cartController@updateCart');

    Route::get('/getFeatures', 'showCategoryItemsController@getFeatures');

	Route::get('/shop/itemdetails/{id}', 'ShowItemImagesController@getItemImages');
	Route::post('/shop/order', 'TransactionController@order');
	Route::get('/admin2/fetchItems', 'fetchItemsController@getItems'); // Test
    Route::post('/admin2/removeImage','removeItemsController@removeImage'); // Tests
    // Route::post('projects', 'ProjectController@store');
    // Route::get('projects/{id}', 'ProjectController@show');
    // Route::put('projects/{project}', 'ProjectController@markAsCompleted');
    // Route::post('tasks', 'TaskController@store');
    // Route::put('tasks/{task}', 'TaskController@markAsCompleted');