<div class="container">
<div class="row" style="background-color: white;">
    <div class="col-12">
        <div class="container-fluid" style="padding-top: 60px; padding-bottom: 110px;">
        <div class="row my-3">
            <span class="mx-auto" style="color: #ec7063;"><h1>Limited</h1></span>
        </div>
        <div class="row mb-2" style="padding-top: 50px;">
            
                        @foreach($data['limited'] as $i => $item)
                            @if($i < 4)
                                @include('item-col')
                            @endif
                        @endforeach

        </div>
        </div>
    </div>
</div>
</div>