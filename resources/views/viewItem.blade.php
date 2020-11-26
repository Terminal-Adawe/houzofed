@include('header')
	<section class="itemsHome" style="background-image: url('{{ asset('images/ladyFashion.jpg') }}">
    	<!-- <img src="{{ asset('images/ladyFashion.jpg') }}" width="100%" /> -->
    </section>

    <div class="pageBar">
        <div class="container">
            <div class="d-flex" style="padding: 15px;">
                <div class="mr-auto p-2">home / items / view item</div>
                <div class="p-2">Test</div>
            </div>
        </div>
    </div>
    <hr/>
    <div class="container my-4" style="position: relative;">
    	@foreach($data['item'] as $item)
    	<div class="row">
    		<input type="hidden" id="item" value="{{ $item }}">
            <div class="col-lg-1 col-md-1 col-sm-12">
                <div class="row">
            	@foreach($data['images'] as $image)
                <!-- <div class="row mb-1"> -->
                	<div class="col-lg-3 col-md-4 col-sm-2 mb-1">
                		<div class="small-view-item" style="border: 1px solid black; height: 100%;">
                			<img src="{{ Storage::url($image->image_path) }}" width="100%" />
                		</div>
                	</div>
                <!-- </div> -->
                @endforeach
                </div>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-12">
                <div class="single-item">
                    <img src="{{ Storage::url($item->image_path) }}" width="100%" />
                </div>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-12">
            </div>
            <div class="col-lg-5 col-md-5 col-sm-12">		
                <div class="row">
                    <div class="col-12">
                        <h1>{{ $item->item_name }}</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <span>
                            <p>
                                {{ $item->description }}
                            </p>
                        </span>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-12">
                        <h4>₵{{ $item->item_price }}</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div id="addToCartButtonDiv" class="my-3" value="{{ $item }}"></div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
        <hr/>

        <div class="row">
            <div class="col-12 relatedItems">
                <div class="row">
                    <span class="mx-auto"><h4>Related Items</h4></span>
                </div>

        <div class="row mt-4">
        	@foreach($data['relatedItems'] as $item)
                @include('item-col')
            @endforeach 
        </div>
            </div>
        </div>
    </div>
@include('footer')