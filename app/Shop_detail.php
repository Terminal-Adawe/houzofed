<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shop_detail extends Model
{
    //
    public function payment_details()
    {
        return $this->hasOne('App\Payment_detail','id','shopid');
    }
}
