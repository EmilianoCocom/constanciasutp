@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <div class="container">
        <div class="row">

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">CatalogoConstancia {{ $catalogoconstancia->id }}</div>
                    <div class="card-body">

                        <a href="{{ url('/catalogo-constancias') }}" title="Back"><button class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</button></a>
                        <a href="{{ url('/catalogo-constancias/' . $catalogoconstancia->id . '/edit') }}" title="Edit CatalogoConstancia"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>

                        <form method="POST" action="{{ url('catalogoconstancias' . '/' . $catalogoconstancia->id) }}" accept-charset="UTF-8" style="display:inline">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger btn-sm" title="Delete CatalogoConstancia" onclick="return confirm(&quot;Confirm delete?&quot;)"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</button>
                        </form>
                        <br/>
                        <br/>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th>ID</th><td>{{ $catalogoconstancia->id }}</td>
                                    </tr>
                                    <tr><th> Nombre </th><td> {{ $catalogoconstancia->nombre }} </td></tr><tr><th> Precio </th><td> {{ $catalogoconstancia->precio }} </td></tr><tr><th> Description </th><td> {{ $catalogoconstancia->description }} </td></tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
