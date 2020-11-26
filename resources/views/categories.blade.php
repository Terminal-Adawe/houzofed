<section class="category-section" style="background: none;">
	<!-- <div class="container-fluid"> -->
		<nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark">
  <!-- <a class="navbar-brand" href="#">Navbar</a> -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      @foreach($data['categories'] as $category)
      <li class="nav-item  position-static mx-4">
        <form action="{{ url('/categories') }}" method="get" id="catSaveForm" enctype="multipart/form-data" class="form-horizontal mx-auto">
            {{ csrf_field() }}
          <input type="hidden" class="nav-catid" name="categoryid" value="{{ $category->id }}">
          <input type="hidden" name="type" value="category">
          <button class="nav-link linkToItems6" type="submit" id="navbarDropdown" aria-haspopup="true" aria-expanded="false">
            {{ $category->category_name }}
          </button>
        </form>
        <div class="dropdown-menu w-100" aria-labelledby="navbarDropdown">
          <div class="container-fluid">
          	<div class="row">
          		<div class="col-lg-8 col">
                <input type="hidden" name="" class="feature-start">
          			<div class="dropdown-divider"></div>
          			<input type="hidden" name="" class="purpose-start">
          		</div>
          		<div class="col-lg-4">
          			<div style="width: 100%; height: 350px; overflow: hidden;">
          				<img src="{{ Storage::url($category->image_path) }}" width="100%">
          			</div>
          		</div>
          	</div>
          </div>
        </div>
      </li>
      @endforeach
  </ul>
  <ul class="navbar-nav ">
  	<li class="nav-item mx-4">
        <a class="nav-link" href="#">
          Offers
        </a>
      </li>
      <li class="nav-item mx-4">
        <a class="nav-link" href="#">
          Buy E-Gift Card
        </a>
      </li>
  </ul>
  </div>
</nav>
	<!-- </div> -->
</section>