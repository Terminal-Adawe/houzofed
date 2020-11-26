@include('admin.head')

@include ('admin.modals')

<body>
    <!-- Left Panel -->
        @include ('admin.left-panel')
    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header -->
            @include ('admin.right-panel-header')
        <!-- Header -->

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Dashboard</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Items</a></li>
                            <li class="active">Add Category</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">

                <!-- content -->
        <div class="row mt-3" style="font-size: 19px; font-weight: 500;">
            <div class="col-12">
                <form action="{{ url('/admin2/postCategory') }}" method="post" id="saveForm" enctype="multipart/form-data" class="form-horizontal">
                                {{ csrf_field() }}
                <div class="row">

                    <div class="col-2">
                        <input class="form-control mr-sm-2" type="text" placeholder="Add Category" id="categoryInput" name="categoryname">
                    </div>
                    <div class="col-3">
                        <div><label for="file-input" class=" form-control-label">Upload Image</label></div>
                        <div><input type="file" id="file-input" name="imageFile" class="form-control-file form-control-sm"></div>
                    </div>
                    <div class="col-1">
                        <button class="ml-1 button-item-env" type="submit" style="border: none; color: black;">
                            <i class="fas fa-plus fa-lg button-item-inv" style="color: #0ea2fc;"></i>&nbsp; <span class="button-item-inv">Add</span>
                        </button>
                    </div>

                    <div class="col-2">      
                            <div class="mx-auto button-item-env" >
                                <i class="fas fa-minus fa-lg button-item-inv" style="color: #fc4f0e; border: none;" data-type='items' data-toggle="modal" data-target="#removeItems"></i>&nbsp; <button class="button-item-inv" type='button' style="border: none; color: black;" data-type='categories' data-toggle="modal" data-target="#removeItems">Remove Items</button>
                            </div>
                    </div>
                    <div class="col-4">
                        <input class="form-control mr-sm-2" type="text" placeholder="Search item names" id="myInput" onkeyup="searchCategories()">
                    </div>
                </div>
                </form>
            </div>
        </div>
            <hr/>
        <div class="row">
            <table class="table table-hover">
                <thead class="thead-light">
                  <tr>
                    <th></th>
                    <th>Category Name</th>
                    <th>Image</th>
                    <th>Date Added</th>
                    <th></th>
                  </tr>
                </thead>
                
                <tbody id="category-data">
                    @foreach ($data['categories'] as $id=>$category)
                    <form action="/admin2/saveItem" method="get" id='form'>
                    {{ csrf_field() }}
                    <input class="categoryid" type="hidden" name='categoryid' value="{{ $category->id }}" />
                  <tr class="noneditFields row{{ $id }}" value="row{{ $id }}">
                    <td><input type="checkbox" name='itemidcheck' value="{{ $category->id }}" class='categoryidcheck'></td>
                    <td>{{ $category->category_name }}</td>
                    <td><div style="width:80px; height: 84px; overflow: hidden; border: 1px solid #eff1f2; border-radius: 3px; background-color: white;"><img src='{{ Storage::url($category->image_path) }}' alt='{{ Storage::url("noimage.jpg") }}' width="100%"/></div></td>
                    <td>{{ $category->created_at }}</td>
                    <td></td>
                  </tr>               
                  </form>
                    @endforeach
                </tbody>
            </table>
        </div> <!-- /#content -->
                
            </div><!-- .animated -->
        </div><!-- .content -->

    </div><!-- /#right-panel -->

    <!-- Right Panel -->


<!-- <script src="{{ asset('admin/vendors/jquery/dist/jquery.min.js') }}"></script> -->
<script src="{{ asset('js/jquery-3.2.1.min.js') }}"></script>
<script src="{{ asset('admin/vendors/popper.js/dist/umd/popper.min.js') }}"></script>
<script src="{{ asset('admin/vendors/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('admin/assets/js/main.js') }}"></script>
<script src="{{ asset('admin/vendors/chosen/chosen.jquery.min.js') }}"></script>
<script src="{{ asset('admin/assets/js/main.js') }}"></script>
<script src="{{ asset('admin/assets/js/customAdmin.js') }}"></script>

</body>

</html>
