<div class="col-lg-3 col-md-3 col-sm-6 mt-3 mx-auto" data-aos="fade-right" data-aos-duration="600" data-aos-easing="ease-in-out">
    <form action="/viewItem" method="get" id="saveForm" enctype="multipart/form-data" class="form-horizontal saveForm">
    {{ csrf_field() }}
        <input type="hidden" name="itemid" value="{{ $item->iid }}" />

        <div class="items-item">
            <img src="{{ Storage::url($item->image_path) }}" width="100%" />
            <button class="linkToItems getCartBtn" type="submit"></button>
        </div>
        <div class="row item-info mx-auto my-3">
            <h6>{{ $item->item_name }}</h6>
                <p class="desPar">
                    {{ $item->description }}
                </p>
        </div>
        <div class="row item-info mx-auto my-1">
            <span class="mr-1"><b>₵{{ $item->item_price }}</b></span>  
               <button type="button" class="btn btn-custom addToCartButtonDiv mx-2" data-item="{{ $item }}" onclick="addtocart({{ $item }})">Add to Cart <i class="fas fa-cart-arrow-down"></i></button>
        </div>
    </form>
</div>