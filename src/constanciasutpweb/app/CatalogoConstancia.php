<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CatalogoConstancia extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'const_catalogo_constancias';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nombre', 'precio', 'description', 'foto', 'referencia', 'dia_entrega'];

    public function Lista_Pedido()
    {
        return $this->hasMany('App\Lista_Pedido, id');
    }
    
}
