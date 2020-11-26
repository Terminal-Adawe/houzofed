@include('header')
	<section class="itemsHome" style="background-image: url('{{ asset('images/big-slider.jpg') }}')">
    	
    </section>

    <input type="hidden" id="categoryid-items" value="{{ $data['categoryid'] }}"/> 
    <input type="hidden" id="category-type" value="{{ $data['type'] }}"/> 
    <div id="categoryItemsDiv">
    	</div>
@include('newsletter')
@include('footer')