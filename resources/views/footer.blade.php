	<footer class="footer">
		<div class="container">
			<div class="row">
        <div class="col-lg-6 col-sm-12">
          <!-- <div class="row">
              <span class="mx-auto my-3 list-group-item list-group-item-custom"><b>Questions</b></span>
            </div> -->
      <div class="row">
            <div class="col-12 mt-3">
              <ul class="list-group list-group-flush">
                <li class="list-group-item list-group-item-custom">
                  <b>Questions</b>
                </li>
              </ul>
            </div>
				<div class="col-6">
					<ul class="list-group list-group-flush">
  						<!-- <li class="list-group-item list-group-item-custom"><a href="{{ url('/') }}"><img src="{{ Storage::url($data['shopdetails']->logo) }}" class="logoImg3"/></a></li>
  						<li class="list-group-item list-group-item-custom">{{ $data['shopdetails']->contact_number }}</li>
  						<li class="list-group-item list-group-item-custom">{{ $data['shopdetails']->address }}</li> -->
              
              <li class="list-group-item list-group-item-custom">
                  <a class="linkToItems4" href="/about">About Us</a>
              </li>
              <li class="list-group-item list-group-item-custom">
                <a class="linkToItems4" href="/about">Sustainability</a>
              </li>
              <li class="list-group-item list-group-item-custom">
                <a class="linkToItems4" href="/about">Our Social Responsibility</a>
              </li>
              <li class="list-group-item list-group-item-custom">
                <a class="linkToItems4" href="/about">Contact Us</a>
              </li>
					</ul> 
				</div>

				<div class="col-6">
					<ul class="list-group list-group-flush">
            <!-- <li class="list-group-item list-group-item-custom">
                
              </li> -->
  						
  						<li class="list-group-item list-group-item-custom">
                <a class="linkToItems4" href="/about">FAQs</a>
              </li>
              <li class="list-group-item list-group-item-custom">
                <form action="{{ url('/privacypolicy') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                            {{ csrf_field() }}
                            <input type='hidden' name='viewType' value="privacypolicy"/>
                            <input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) }}" id='cartHidden' class="cartItems" />
                  <button class="linkToItems4" type="submit">Privacy Policy</button>
                </form>
              </li>
  						<li class="list-group-item list-group-item-custom">
  							<form action="{{ url('/termsandconditions') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                        		{{ csrf_field() }}
                        		<input type='hidden' name='viewType' value="termsandconditions"/>
                        		<input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) }}" id='cartHidden' class="cartItems" />
  								<button class="linkToItems4" type="submit">Terms & Conditions</button>
  							</form>
  						</li>
  						
  						<li class="list-group-item list-group-item-custom">Careers</li>
					</ul> 
				</div>
      </div>
    </div>

				<div class="col-lg-3 col-sm-6 my-3">
					<ul class="list-group list-group-flush">
  						<li class="list-group-item list-group-item-custom"><b>Shopping Guide</b></li>
  						<!-- <li class="list-group-item list-group-item-custom">
  							<form action="{{ url('/myaccount') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                        		{{ csrf_field() }}
                        		<input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) }}" id='cartHidden' class="cartItems" />
  								<button class="linkToItems4" type="submit">My Account</button>
  							</form>
  						</li> -->
  						<!-- <li class="list-group-item list-group-item-custom">
  							<form action="{{ url('/checkout') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                        		{{ csrf_field() }}
                        		<input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) }}" id='cartHidden' class="cartItems" />
  								<button class="linkToItems4" type="submit">Checkout</button>
  							</form>
  						</li> -->
  						<li class="list-group-item list-group-item-custom">
                <form action="{{ url('/privacypolicy') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                            {{ csrf_field() }}
                            <input type='hidden' name='viewType' value="privacypolicy"/>
                            <input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) }}" id='cartHidden' class="cartItems" />
                  <button class="linkToItems4" type="submit">Track your order</button>
                </form>
              </li>
              <li class="list-group-item list-group-item-custom">
                <form action="{{ url('/privacypolicy') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                            {{ csrf_field() }}
                            <input type='hidden' name='viewType' value="privacypolicy"/>
                            <input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) }}" id='cartHidden' class="cartItems" />
                  <button class="linkToItems4" type="submit">Delivery & Returns</button>
                </form>
              </li>
  						
  						<li class="list-group-item list-group-item-custom">
  							<form action="{{ url('/customerservice') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                        		{{ csrf_field() }}
                        		<input type='hidden' name='viewType' value="privacypolicy"/>
                        		<input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) }}" id='cartHidden' class="cartItems" />
  								<button class="linkToItems4" type="submit">Size Guide</button>
  							</form>
  						</li>
					</ul> 
				</div>

				<div class="col-lg-3 col-sm-6 my-3">
					<ul class="list-group list-group-flush">
  						<li class="list-group-item list-group-item-custom"><b>In the Press</b></li>
  						<li class="list-group-item list-group-item-custom">
                <a class="linkToItems4" href="/about">Social Feed</a>
              </li>
              <li class="list-group-item list-group-item-custom">
                <a class="linkToItems4" href="/about">Blog Posts</a>
              </li>
              <li class="list-group-item list-group-item-custom">
                <a class="linkToItems4" href="/about">Events</a>
              </li>
              <li class="list-group-item list-group-item-custom">
                <a class="linkToItems4" href="/about">Awards</a>
              </li>
					</ul> 
				</div>
			</div>
			<hr>
	
			<!-- <div class="row">
				<div class="social-icons mx-auto">
					<i class="fab fa-facebook-f fa-lg mr-2"></i>
					<i class="fab fa-twitter fa-lg mr-2"></i>
					<i class="fab fa-instagram-square fa-lg mr-2"></i>
          <i class="fab fa-pinterest-p fa-lg"></i>
				</div>
			</div> -->
      <div class="container" style="padding-top: 10px; padding-bottom: 13px;">
    <div class="row my-2">
      <span class="mx-auto"><h5>Follow Us</h5></span>
    </div>
    <div class="row">
      <div class="col-6 mx-auto">
        <div class="row">
            <div class="col">
              <div class="row">
                <i class="fab fa-facebook-f fa-lg mx-auto" style="color: whitesmoke"></i>
              </div>
            </div>
            <div class="col">
              <div class="row">
                <i class="fab fa-twitter fa-lg mx-auto" style="color: whitesmoke"></i>
              </div>
            </div>
            <div class="col">
              <div class="row">
                <i class="fab fa-instagram-square fa-lg mx-auto" style="color: whitesmoke"></i>
              </div>
            </div>
            <div class="col">
              <div class="row">
                <i class="fab fa-pinterest-p fa-lg mx-auto" style="color: whitesmoke"></i>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>

			<div class="row mt-4">
				<span class="mx-auto">Copyright</span>
			</div>
		</div>
    
	</footer>
	<!-- Jquery needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Function used to shrink nav bar removing paddings and adding black background -->
    <script>
        $(window).scroll(function() {
            if ($(document).scrollTop() > 50) {
                $('.actual-nav').addClass('affix');
      
                console.log("OK");
            } else {
                $('.actual-nav').removeClass('affix');

            }
        });
    </script>
    <!-- <script type="text/javascript" src="{{mix('/js/app.js')}}"></script> -->
	<script src="{{ asset('bootstrap-4.3.1-dist/js/bootstrap.min.js') }}"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script type="text/javascript" src="{{mix('/js/app.js')}}"></script>
  <script src="{{ asset('js/splide.min.js') }}"></script>
	<script src="{{ asset('js/deluxe.js') }}"></script>
  <script>
    AOS.init();
  </script>
</body>
</html>