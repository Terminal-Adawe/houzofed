@include('header')

    <section class="home" style="background-image: url('{{ asset('images/womanClothing.jpg') }}')">
    	
    </section>

    <!-- <section class="life-categories" style="background-image: url('{{ asset('images/Sun-Tornado.svg') }}')"> -->
    <section class="life-categories" style="background: #ffb347;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #ffcc33, #ffb347);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #ffcc33, #ffb347); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
">

        <div class="container-fluid my-4">
            <div class="row my-4 no-gutters">
                <div class="col-lg-4 col-sm-12 mt-4">
                    <div class="category-2-card mx-auto" style="background-image: url('{{ asset('images/casualWear.jpg') }}'); transform: rotateZ(-10deg);">
                    </div>
                    <span class="centerDiv" style="font-size: 23px;"><a href="#" class="orangeLink">Catching up on life?</a></span>
                </div>
                <div class="col-lg-4 col-sm-12 mt-4">
                    <div class="category-2-card mx-auto" style="background-image: url('{{ asset('images/upcomingOccasion.jpg') }}'); ">
                    </div>
                    <span class="centerDiv" style="font-size: 23px;"><a href="#" class="orangeLink">The Upcoming Occasion?</a></span>
                </div>
                <div class="col-lg-4 col-sm-12 mt-4">
                    <div class="category-2-card mx-auto" style="background-image: url('{{ asset('images/businesswear.jpg') }}'); transform: rotateZ(24deg);">
                        
                    </div>
                    <span class="centerDiv" style="font-size: 23px;"><a href="#" class="orangeLink">The big presentation?</a></span>
                </div>
            </div>

            <div class="row" style="padding-top: 50px">

                    <span class="inner-mid-message mx-auto"><b>Shop with Us</b></span>

            </div>

        </div>
    </section>

   <!--  <section>
        <div class="container-fluid">
            <div class="row mid-message">
                <div class="col-4">
                    <div class="inner-mid-message centerDiv">
                        <span class="centerDiv">Life 360, be Inspired!</span>
                    </div>
                </div>
                <div class="col-8">
                    <div class="inner-mid-pic centerDiv">
                        <img src="{{ asset('images/happyGirlSmile.jpg') }}" width="100%">
                    </div>
                </div>
            </div>
        </div>
    </section> -->


    @include('newarrivals')



    @include('editions')

    <!-- <div class="moodDiv"> -->
        <!-- just to make scrolling effect possible -->
	<!-- 	<img src="{{ asset('images/ladyWhiteBackground.jpg') }}" width="100%" />
		<div class="moods">
			<div class="mood-button-div">
			 	<div class="btn-group-vertical btn-group-lg">
                    @foreach($data['purposes'] as $purpose)
  					<button type="button" class="btn btn-outline-dark btn-lg my-4" data-aos="fade-up">{{ $purpose->purpose }}</button>
                    @endforeach
				</div> 
			</div>
		</div>
    </div>
 -->
 <!-- <hr/> -->
    <div class="container-fluid mt-4" style="padding-top: 80px; padding-bottom: 80px;">
    	
        <div class="row my-3">
            <span class="mx-auto" style="color: #f5b041;"><h1>Shop by Category</h1></span>
        </div>
    	<div class="row no-gutters" style="position: relative; padding-top: 50px; padding-bottom: 52px;">
    		<div class="col-lg-1"></div>

                <div class="col-lg-7 col-md-7 col-sm-12 mt-1">
                    <div class="row no-gutters">
                        <div class="col-lg-12 col-sm-12 mt-1 label-2" >
                            <form action="{{ url('/categories') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                                {{ csrf_field() }}
                                <input type="hidden" name="categoryid" value="4">
                                <input type="hidden" name="type" value="category">
                                <div class="itemDiv mx-auto" style="width: 99%">
                                    <img src="{{ asset('images/big-slider.jpg') }}" width="100%" />
                                    <button class="linkToItems" type="submit"><span>Social</span></button>
                                </div>
                            </form>
                        </div>

                        <div class="col-lg-4 col-sm-6 mt-1 label-2">
                            <form action="{{ url('/categories') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                                {{ csrf_field() }}
                                <input type="hidden" name="categoryid" value="6">
                                <input type="hidden" name="type" value="category">
                                <div class="itemDiv mx-auto">
                                    <img src="{{ asset('images/ladyInYellow.jpg') }}" width="100%" />
                                    <button class="linkToItems" type="submit"><span>Casual</span></button>
                                </div>
                            </form>
                        </div>

                        <div class="col-lg-4 col-sm-6 mt-1 label-2 items">
                            <form action="{{ url('/categories') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                                {{ csrf_field() }}
                                <input type="hidden" name="categoryid" value="6">
                                <input type="hidden" name="type" value="category">
                                <div class="itemDiv mx-auto">
                                    <img src="{{ asset('images/manModel.jpg') }}" width="100%" />
                                    <button class="linkToItems" type="submit"><span>Elegant</span></button>
                                </div>
                            </form>
                        </div>

                        <div class="col-lg-4 col-sm-6 mt-1 label-2 items">
                            <form action="{{ url('/categories') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                                {{ csrf_field() }}
                                <input type="hidden" name="categoryid" value="7">
                                <input type="hidden" name="type" value="category">
                                <div class="itemDiv mx-auto">
                                    <img src="{{ asset('images/african.jpg') }}" width="100%" />
                                    <button class="linkToItems" type="submit"><span>African</span></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <div class="col-lg-3 col-md-3 col-sm-12 mt-1">
                    <div class="row no-gutters">
                        <div class="col-12 mt-1 label-2 items">
                            <form action="{{ url('/categories') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal mx-auto">
                            {{ csrf_field() }}
                                <input type="hidden" name="categoryid" value="2">
                                <input type="hidden" name="type" value="category">
                                <div class="itemDiv mx-auto">
                                    <img src="{{ asset('images/africanLady.jpg') }}" width="100%" class="mx-auto" />
                                    <button class="linkToItems" type="submit"><span>Women's Collection</span></button>
                                </div>
                            </form>
                        </div>

                        <div class="col-12 mt-1 label-2 items">
                            <form action="{{ url('/categories') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal">
                            {{ csrf_field() }}
                                <input type="hidden" name="categoryid" value="1">
                                <input type="hidden" name="type" value="category">
                                <div class="itemDiv mx-auto">
                                    <img src="{{ asset('images/menro.jpg') }}" width="100%" />
                                    <button class="linkToItems" type="submit"><span>Men's Collection</span></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


    		<div class="col-lg-1"></div>
    	</div>
    </div>

    @include('giftcardsSection')

    @include('press')

    @include('social')


    @include('newsletter')
    @include('footer')