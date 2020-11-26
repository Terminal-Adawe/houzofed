<div class="col-lg-3 col-md-3 col-sm-6 mt-3" data-aos="fade-right" data-aos-duration="600" data-aos-easing="ease-in-out">
    <form action="/viewItem" method="get" id="saveForm" enctype="multipart/form-data" class="form-horizontal saveForm">
    {{ csrf_field() }}
        <input type="hidden" name="itemid" value="{{ $item->iid }}" />

        <div class="items-item mx-auto" style="border-radius: 5px; width: 90%">
            <img src="{{ Storage::url($item->image_path) }}" width="100%" />
            <button class="linkToItems getCartBtn" type="submit"></button>
        </div>
        <div class="row mx-auto my-3" style="font-family: copperplate">
            <div class="mx-auto">
                <h6>{{ $item->item_name }}</h6>
                <p class="">
                    {{ $item->description }}
                </p>
            </div>
        </div>
        <div class="row my-1">
            <span class="mx-auto"><b>₵{{ $item->item_price }}</b></span>  
        </div>
        <div class="row">
            <button type="button" class="btn btn-custom2 addToCartButtonDiv mx-auto" data-item="{{ $item }}" onclick="addtocart({{ $item }})">Add to Cart <i class="fas fa-cart-arrow-down"></i></button>
        </div>

    </form>
</div>