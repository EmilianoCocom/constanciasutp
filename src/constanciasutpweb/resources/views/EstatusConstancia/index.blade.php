@extends('layouts.layout')
@section('content')
<div class="row">
  <section class="content">
    <div class="col-md-8 col-md-offset-2">
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="pull-left"><h3>Lista Status</h3></div>
          <div class="pull-right">
            <div class="btn-group">
              <a href="{{ route('statu.create') }}" class="btn btn-info" >Añadir Status</a>
            </div>
          </div><center>
            
          <div class="table-container">
            <table id="mytable" class="table table-bordred table-striped">
             <thead>
               <th>Nombre</th>
               <th>Descripcion</th>
               
               <th>Editar</th>
               <th>Eliminar</th>
             </thead>
             <tbody>
              @if($status->count())  
              @foreach($status as $statu)  
              <tr>
                <td>{{$statu->nombre}}</td>
                <td>{{$statu->descripcion}}</td>
                
                <td><a class="btn btn-primary btn-xs" href="{{action('StatuController@edit', $statu->id)}}" ><span class="glyphicon glyphicon-pencil"></span>Editar</a></td>
                <td>
                  <form action="{{action('StatuController@destroy', $statu->id)}}" method="post">
                   {{csrf_field()}}
                   <input name="_method" type="hidden" value="DELETE">
 
                   <button class="btn btn-danger btn-xs" type="submit" data-toggle="modal" data-target="#miModal" onclick="return confirm(&quot;Confirm delete?&quot;)"><span class="glyphicon glyphicon-trash"></span>Eliminar</button>

                    
                        <!-- Enlace para abrir el modal -->

<!-- Modal -->
<div id="miModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Contenido del modal -->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p>Texto del modal</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
<script>
  $("#miModal").modal("show");
</script>

                 </td>
               </tr>

               @endforeach 
               @else
               <tr>
                <td colspan="8">No hay registro !!</td>
              </tr>
              @endif
            </tbody>
 
          </table>
        </div>
      </div>
      {{ $status->links() }}
    </div>
  </div>
</section>
 
@endsection