<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\Shop_detail;

class getTransactionsController extends Controller
{
    //
    public function showDetails(){
    	$data['transactions'] = Transaction::orderBy('transactions.created_at','desc')
    								->join('payment_methods','transactions.payment_method_id','=','payment_methods.id')
    								->select('*','transactions.id as t_id','transactions.created_at as t_created_at','transactions.updated_at as t_updated_at')
    								->paginate(12);

    	$data['shopdetails'] = Shop_detail::first();

    	return view('admin.transactions')->with('data',$data);
    }
}
