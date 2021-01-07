<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\CatalogoConstancia;
use Illuminate\Http\Request;

class CatalogoConstanciasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $keyword = $request->get('search');
        $perPage = 25;

        if (!empty($keyword)) {
            $catalogoconstancias = CatalogoConstancia::where('nombre', 'LIKE', "%$keyword%")
                ->orWhere('precio', 'LIKE', "%$keyword%")
                ->orWhere('description', 'LIKE', "%$keyword%")
                ->orWhere('foto', 'LIKE', "%$keyword%")
                ->orWhere('referencia', 'LIKE', "%$keyword%")
                ->orWhere('dia_entrega', 'LIKE', "%$keyword%")
                ->latest()->paginate($perPage);
        } else {
            $catalogoconstancias = CatalogoConstancia::latest()->paginate($perPage);
        }

        return view('catalogo-constancias.index', compact('catalogoconstancias'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('catalogo-constancias.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        $this->validate($request, [
			'nombre' => 'required',
			'precio' => 'required',
			'description' => 'required',
			'foto' => 'required',
			'referencia' => 'required',
			'dia_entrega' => 'required'
        ]);
        
        $file = $request->file('foto');
        $name = time().$file->getClientOriginalName();
        $file->move(public_path().'/images/',$name);
       
        $constancia = new CatalogoConstancia();
        $constancia->nombre=$request->nombre;
        $constancia->precio=$request->precio;
        $constancia->referencia=$request->referencia;
        $constancia->foto = $name;
        $constancia->description=$request->description;
        $constancia->dia_entrega=$request->dia_entrega;
        $constancia->save();

        // return redirect('lista-constancias')->with('status','Felicidades se ha creado '.$constancia->nombre);
        

        // $requestData = $request->all();
        
        // CatalogoConstancia::create($requestData);

        return redirect('catalogo-constancias')->with('flash_message', 'CatalogoConstancia added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $catalogoconstancia = CatalogoConstancia::findOrFail($id);

        return view('catalogo-constancias.show', compact('catalogoconstancia'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $catalogoconstancia = CatalogoConstancia::findOrFail($id);

        return view('catalogo-constancias.edit', compact('catalogoconstancia'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
			'nombre' => 'required',
			'precio' => 'required',
			'description' => 'required',
			'foto' => 'required',
			'referencia' => 'required',
			'dia_entrega' => 'required'
        ]);
        //obtiene el id de la constancia para actualizar 
        $catalogoconstancia = CatalogoConstancia::findOrFail($id);
        
        //para guardar la foto y asignarle un nombre
        $file = $request->file('foto');
        $name = time().$file->getClientOriginalName();
        $file->move(public_path().'/images/',$name);

        //se recogen todas los request para actualizar
        $catalogoconstancia->nombre=$request->nombre;
        $catalogoconstancia->precio=$request->precio;
        $catalogoconstancia->referencia=$request->referencia;
        $catalogoconstancia->foto = $name;
        $catalogoconstancia->description=$request->description;
        $catalogoconstancia->dia_entrega=$request->dia_entrega;
        $catalogoconstancia->update();

        // $requestData = $request->all();
        // $catalogoconstancia->update($requestData);

        return redirect('catalogo-constancias')->with('flash_message', 'CatalogoConstancia updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        CatalogoConstancia::destroy($id);

        return redirect('catalogo-constancias')->with('flash_message', 'CatalogoConstancia deleted!');
    }
}
