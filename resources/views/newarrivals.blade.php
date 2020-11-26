<!-- <div class="splide">
    <div class="splide__track">
        <ul class="splide__list">
            @foreach($data['newarrivals'] as $i => $item)
            <li class="splide__slide">
                <div class="splide__slide__container">
                    <img src="{{ Storage::url($item->image_path) }}">
                </div>
            </li>
            @endforeach
        </ul>
    </div>
</div>
 -->

<div class="container-fluid" style="padding-top: 50px; padding-bottom: 50px; background-color:  #f8f9f9;">
    <div class="row my-3">
            <span class="mx-auto" style="color: #616a6b;"><h1>Just In</h1></span>
        </div>
<!-- <div class="row" style="background-color:  #f8f9f9; overflow: hidden;"> -->
	<!-- <div class="col-12">
		<div class="container-fluid" style="padding-top: 80px; padding-bottom: 80px;">
		<div class="row my-3">
			<span class="mx-auto" style="color: #616a6b;"><h1>Just In</h1></span>
		</div>
		<div class="row mb-2" style="padding-top: 50px;">
			<div id="second-caroul" class="carousel slide" data-ride="carousel" style="width: 100%;"> -->

			  <!-- Indicators -->
			

			  <!-- The slideshow -->
		<!-- 	  <div class="carousel-inner">

			  	@foreach($data['newarrivals'] as $r => $itemr)
			  	@if($r/4==1)
			  	<div class="carousel-item active">
			    	<div class="row">
			    		@foreach($data['newarrivals'] as $i => $item)
			    			@if($i < 4)
			      				@include('item-col-2')
			      			@endif
			      		@endforeach
			      	</div>
			    </div>
			    @elseif($r%3==0 && $r/4 > 1)
			    <div class="carousel-item">
			    	<div class="row">
			    		@foreach($data['newarrivals'] as $i => $item)
			    			@if($i > 3 && $i < 8)
			      				@include('item-col-2')
			      			@endif
			      		@endforeach
			      	</div>
			    </div>
			    @endif
			    @endforeach
	
			  </div>
 -->
			  <!-- Left and right controls -->
<!-- 			  <a class="carousel-control-prev caroul-button" href="#second-caroul" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next caroul-button" href="#second-caroul" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>

			</div>
		</div>
		</div>
	</div> -->
    <div class="splide">
    <div class="splide__track">
        <ul class="splide__list">
            @foreach($data['newarrivals'] as $i => $item)

                <li class="splide__slide splide_li">
                    <div class="splide__slide__container">
                                @include('item-col-col')
                    </div>
                </li>

            @endforeach
        </ul>
    </div>
</div>
</div>
<!-- </div> -->

