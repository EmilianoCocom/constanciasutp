@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <div class="container">
        <div class="row">

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">Catalogoconstancias</div>
                    <div class="card-body">
                        <a href="{{ url('/catalogo-constancias/create') }}" class="btn btn-success btn-sm" title="Add New CatalogoConstancia">
                            <i class="fa fa-plus" aria-hidden="true"></i> Add New
                        </a>

                        <form method="GET" action="{{ url('/catalogo-constancias') }}" accept-charset="UTF-8" class="form-inline my-2 my-lg-0 float-right" role="search">
                            <div class="input-group">
                                <input type="text" class="form-control" name="search" placeholder="Search..." value="{{ request('search') }}">
                                <span class="input-group-append">
                                    <button class="btn btn-secondary" type="submit">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>

                        <br/>
                        <br/>
                        <div class="table-responsive">
                                @foreach($catalogoconstancias as $item)
                                <div class="card mb-3" style="max-width: 750px;">
                                    <div class="row no-gutters">
                                        <div class="col-md-4">
                                        <img src="./images/{{$item->foto}}" class="card-img" alt="...">
                                        </div>
                                        <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title font-weight-bold">Nombre: {{$item->nombre}}</h5>
                                            <p class="card-text"><h6>Precio: ${{$item->precio}}</h6></p>
                                            <p class="card-text">Dias para entrega: {{$item->dia_entrega}}</p>
                                            <p class="card-text"><small class="text-muted">Descripción: {{$item->description}}</small></p>
                                            <a href="{{ url('/catalogo-constancias/' . $item->id) }}" title="View CatalogoConstancia"><button class="btn btn-info btn-sm"><i class="fa fa-eye" aria-hidden="true"></i> Ver detalles</button></a>
                                            <a href="{{ url('/catalogo-constancias/' . $item->id . '/edit') }}" title="Edit CatalogoConstancia"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Editar</button></a>
                                            <form method="POST" action="{{ url('/catalogo-constancias' . '/' . $item->id) }}" accept-charset="UTF-8" style="display:inline">
                                                {{ method_field('DELETE') }}
                                                {{ csrf_field() }}
                                                <button type="submit" class="btn btn-danger btn-sm" title="Delete CatalogoConstancia" onclick="return confirm(&quot;Confirm delete?&quot;)"><i class="fa fa-trash-o" aria-hidden="true"></i>Eliminar</button>
                                            </form>
                                        </div>
                                        </div>
                                    </div>
                                    </div>
                                @endforeach
                            <div class="pagination-wrapper"> {!! $catalogoconstancias->appends(['search' => Request::get('search')])->render() !!} </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
