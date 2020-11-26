<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ItemQuantity extends Model
{
    //
    protected $table = "item_quantity";
    protected $fillable = ['quantity_available'];
    protected $attributes = ['frozen_quantity' => '0'];
}
