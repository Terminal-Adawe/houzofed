<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    //
    protected $fillable = [
        'item_image_id','available_sizes','item_name','category','feature','available_colors','description','suitable_purposes'
    ];

    public function item_images()
    {
        return $this->hasMany('App\ItemImage','id','item_image_id');
    }

    public function item_prices()
    {
        return $this->hasOne('App\ItemPrice');
    }

    public function quantity()
    {
        return $this->hasOne('App\ItemQuantity');
    }
}
