<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Statu extends Model
{
    protected $fillable = ['nombre', 'descripcion'];
   
    public function const_lista_pedido()
    {
        return $this->hasMany('App\const_lista_pedido');
    }
}

