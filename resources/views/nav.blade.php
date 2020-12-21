<!-- <nav>
        <div class="nav d-flex justify-content-between">
            <div class="logo">

                    <a class="menu" href="/"><b><img src="{{ Storage::url($data['shopdetails']->logo ?? '') }}" class="logoImg2" /></b></a>
                
            </div>
            <div id="mainListDiv" class="main_list p-2">
                <ul class="navlinks">
                    <li><a href="#">Shop</a></li>
                    <li>
                        <div class="dropdown">
                            <a href="{{ url('/categories') }}" class="category-women menu dropdown-toggle" data-value="women" data-toggle="dropdown">Women</a>
                                <div class="dropdown-content container-fluid">
                                    <div class="row">
                                        <div class="col dropdown-listitems">
                                            <a href="#" class="aa" style="font-size: 15px; padding-top: 5px; padding-bottom: 5px">Link 1</a>
                                            <a href="#" class="aa" style="font-size: 15px; padding-top: 5px; padding-bottom: 5px">Link 2</a>
                                            <a href="#" class="aa" style="font-size: 15px; padding-top: 5px; padding-bottom: 5px">Link 3</a>
                                        </div>
                                        <div class="col">
                                            <div class="menuPic centerDiv">
                                                <img src="{{ asset('images/ladyInYellow.jpg') }}" width="90%">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div> 
                    </li>
                    <li>
                        <a href="{{ url('/categories') }}" class="category-men menu" data-value="men">Men</a>
                    </li>
                    <li>
                        <a href="#" class="menu" data-value="accessory">Sales</a>
                    </li>
                    <li>
                        <a href="#" class="menu" data-value="media">Media</a>
                    </li>
                    <li>
                        <a href="#" class="menu" data-value="contact">Contact</a>
                    </li>
                    <li>
                        <form action='/cart' method='get'>
                            {{ csrf_field() }}
                        <button class="linkToItems2" type='submit'><i class="fas fa-cart-arrow-down"> Cart</i>

                            <input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) ?? [] }}" id='theCart' class="cartItems" />
                          
                            
                            <span id='cartCount' class="badge badge-pill" style="background-color: #f5a906; color: white; font-weight: bold">
                                {{ $data['cartCount'] ?? 0 }}
                            </span>
        

                        </button>
                        </form>
                    </li>
                </ul>
            </div>
            <div class="p-2 mr-4">welcome 
                @if(Auth::check())
                <button type="button" class="loginTag linkToItems5 dropdown-toggle" data-toggle="dropdown">{{ optional(Auth::user())->name }}
                </button>
                @endif
            <div class="dropdown-menu"> -->
                <!-- <h5 class="dropdown-header">Dropdown header</h5> -->
  <!--               <a class="dropdown-item linkToItems5" href="{{ url('/logout') }}">Log out</a>
            </div>
            </div>
            <span class="navTrigger">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </div>

    </nav>
 -->
<header class="header fixed-top actual-nav">
<nav class="navbar navbar-icon-top navbar-expand-lg navbar-light" style="background-color: none;">
  <!-- <a class="navbar-brand" href="#">Navbar</a> -->

    <ul class="navbar-nav mr-auto">
      <li class="nav-item active mx-4">
        <div class="logoImg3">
          <a class="nav-link" href="/">
            <!-- <i class="fas fa-home fa-3x" style="color: #e67e22;"></i> -->
            <img src="{{ Storage::url($data['shopdetails']->logo ?? '') }}"  width="100%" />
            <!-- <span class="sr-only">(current)</span> -->
            </a>
            <marquee behavior="scroll" direction="left" scrollamount="2" style="color: whitesmoke; text-shadow: 1px 1px 1px #4d5656;"><small>How you feel matters</small></marquee>
        </div>
      </li>
    </ul>
    <ul class="navbar-nav">
      
      <li class="nav-item mx-2">
        <a class="nav-link" href="#">
          <i class="fas fa-search fa-lg" style="color: #f5a906;">
          </i>
        </a>
      </li>
      <li class="nav-item dropdown mx-2">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-star fa-lg" style="color: #f5a906;">
          </i>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">item 1</a>
          <a class="dropdown-item" href="#">item 2</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">item 3</a>
        </div>
      </li>
      <li class="nav-item">
        
        <form action='/cart' method='get' class="nav-link">
                    {{ csrf_field() }}
            <button class="linkToItems2" type='submit'>

              <i class="fas fa-cart-arrow-down fa-lg">
            </i>

            <span id='cartCount' class="badge badge-pill" style="background-color: #f5a906; color: white; font-weight: bold">
                                {{ $data['cartCount'] ?? 0 }}
              </span>

              <input type="hidden" name="cartItems" value="{{ json_encode($data['cart']) ?? [] }}" id='theCart' class="cartItems" />
                          
                            
              
            </button>
          </form>
        
      </li>
      <li class="nav-item mx-2">
        <a class="nav-link" href="#">
          <i class="fas fa-user-alt fa-lg" style="color: #f5a906;">
          </i>
        </a>
      </li>
    </ul>
    <!-- <ul class="navbar-nav ">
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fa fa-bell">
            <span class="badge badge-info">11</span>
          </i>
          Test
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">
          <i class="fa fa-globe">
            <span class="badge badge-success">11</span>
          </i>
          Test
        </a>
      </li>
    </ul> -->
    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form> -->
</nav>
@include('categories')
</header>

