@section('htmlheader')
    @include('layouts.partials.htmlheader_controlescolar')
@show

<div class="container">
    @yield('content')
</div>

@include('layouts.partials.footer')