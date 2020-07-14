@section('htmlheader')
    @include('layouts.partials.htmlheader')
@show

<div class="container">
    @yield('content')
</div>

@include('layouts.partials.footer')