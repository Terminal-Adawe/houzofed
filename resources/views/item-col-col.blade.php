


        <div class="item-div-1 mx-auto">
            <form action="/viewItem" method="get" id="saveForm" enctype="multipart/form-data" class="form-horizontal saveForm">
                {{ csrf_field() }}
                <input type="hidden" name="itemid" value="{{ $item->iid }}" />
                <div class="item-image-holder items-item">
                    <img src="{{ Storage::url($item->image_path) }}" width="100%" />
                    <button class="linkToItems getCartBtn" type="submit"></button>
                </div>
                <div class="row my-1" style="font-family: copperplate">
                    <div class="col">
                        <div class="mx-auto">
                            <h6>{{ $item->item_name }}</h6>
<!--                            <p class="">
                                    {{ $item->description }}
                                </p> -->
                        </div>
                    </div>
                </div>
                <div class="row my-1">
                    <div class="col">
                        <div class="mx-auto">
                            <span><b>₵{{ $item->item_price }}</b></span>  
                        </div>
                    </div>
                </div>
                <div class="row my-1">
                    <div class="col">
                        <button type="submit" class="btn btn-custom4 btn-block mx-auto">SHOP NOW</button>
                    </div>
                </div>
            </form>
        </div>