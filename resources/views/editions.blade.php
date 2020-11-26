<section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-6 col-sm-12" style="background-color: white; padding-top: 80px; padding-bottom: 80px;">
				<div class="row my-4">
					<span class="mx-auto" style="color: #f5b041;"><h2><b>Limited Edition</b></h2></span>
				</div>

				<div class="container-fluid">
				<div class="splide">
    				<div class="splide__track">
        				<ul class="splide__list">
            			@foreach($data['limited'] as $i => $item)

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
			</div>


			<div class="col-lg-6 col-sm-12" style="background-color: #ecf0f1; padding-top: 80px; padding-bottom: 80px;">
				<div class="row my-4">
					<span class="mx-auto" style="color: #f5b041;"><h2><b>Best Seller</b></h2></span>
				</div>

			<div class="container-fluid">
				<div class="splide">
    				<div class="splide__track">
        				<ul class="splide__list">
            			@foreach($data['limited'] as $i => $item)

            				<li class="splide__slide splide_li" >
                				<div class="splide__slide__container">
                    					@include('item-col-col')
                				</div>
            				</li>
            			@endforeach
        				</ul>
    				</div>
				</div>
			</div>
			</div>
		</div>
	</div>
</section>