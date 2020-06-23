
@extends('layouts.estilo')

@section('content')
<div class="col-sm-offset-3 col-sm-6">
 <div class="panel-title">
 <h1>Status Constancia</h1>
</div>

  <form action="{{ url('constanciaestatus') }}" method="POST">
{{csrf_field() }}
<div class="form-group">
   <label for="name" class="control-label">Nombre</label>
   <input type="text" name="name" class="form-control">

</div>
<div class="form-group">
   <label for="descripcion" class="control-label">Descripcion</label>
   <input type="text" name="descripcion" class="form-control">

  <div class="form-group">
  <div class="col-sm-offset-3 col-sm-6">
   <button type="submit" class="btn btn-default">
      <i class="fa fa-plus"></i>Registrar Un estatus
  </button>
  </div>
  </div>
  </form>
  </div>
</div>
@endsection
