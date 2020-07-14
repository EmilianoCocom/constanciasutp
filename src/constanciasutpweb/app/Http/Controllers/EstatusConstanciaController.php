<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\EstatusConstancia;
use Illuminate\Http\Request;

class EstatusConstanciaController extends Controller
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
            $estatusconstancia = EstatusConstancia::where('nombre', 'LIKE', "%$keyword%")
                ->orWhere('descripcion', 'LIKE', "%$keyword%")
                ->latest()->paginate($perPage);
        } else {
            $estatusconstancia = EstatusConstancia::latest()->paginate($perPage);
        }

        return view('estatus-constancia.index', compact('estatusconstancia'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('estatus-constancia.create');
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
			'' => ''
		]);
        $requestData = $request->all();
        
        EstatusConstancia::create($requestData);

        return redirect('estatus-constancia')->with('flash_message', 'EstatusConstancium added!');
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
        $estatusconstancia = EstatusConstancia::findOrFail($id);

        return view('estatus-constancia.show', compact('estatusconstancia'));
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
        $estatusconstancia = EstatusConstancia::findOrFail($id);

        return view('estatus-constancia.edit', compact('estatusconstancia'));
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
			'' => ''
		]);
        $requestData = $request->all();
        
        $estatusconstancia = EstatusConstancia::findOrFail($id);
        $estatusconstancia->update($requestData);

        return redirect('estatus-constancia')->with('flash_message', 'EstatusConstancia updated!');
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
        EstatusConstancia::destroy($id);

        return redirect('estatus-constancia')->with('flash_message', 'EstatusConstancia deleted!');
    }
}
