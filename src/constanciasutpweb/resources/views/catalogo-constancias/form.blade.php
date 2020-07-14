<div class="form-group {{ $errors->has('nombre') ? 'has-error' : ''}}">
    <label for="nombre" class="control-label">{{ 'Nombre' }}</label>
    <input class="form-control" name="nombre" type="text" id="nombre" value="{{ isset($catalogoconstancia->nombre) ? $catalogoconstancia->nombre : ''}}" required>
    {!! $errors->first('nombre', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('precio') ? 'has-error' : ''}}">
    <label for="precio" class="control-label">{{ 'Precio' }}</label>
    <input class="form-control" name="precio" type="number" id="precio" value="{{ isset($catalogoconstancia->precio) ? $catalogoconstancia->precio : ''}}" required>
    {!! $errors->first('precio', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('description') ? 'has-error' : ''}}">
    <label for="description" class="control-label">{{ 'Description' }}</label>
    <textarea class="form-control" rows="5" name="description" type="textarea" id="description" required>{{ isset($catalogoconstancia->description) ? $catalogoconstancia->description : ''}}</textarea>
    {!! $errors->first('description', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('foto') ? 'has-error' : ''}}">
    <label for="foto" class="control-label">{{ 'Foto' }}</label>
    <input class="form-control" name="foto" type="file" id="foto" value="{{ isset($catalogoconstancia->foto) ? $catalogoconstancia->foto : ''}}" required>
    {!! $errors->first('foto', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('referencia') ? 'has-error' : ''}}">
    <label for="referencia" class="control-label">{{ 'Referencia' }}</label>
    <input class="form-control" name="referencia" type="text" id="referencia" value="{{ isset($catalogoconstancia->referencia) ? $catalogoconstancia->referencia : ''}}" required>
    {!! $errors->first('referencia', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('dia_entrega') ? 'has-error' : ''}}">
    <label for="dia_entrega" class="control-label">{{ 'Dia Entrega' }}</label>
    <input class="form-control" name="dia_entrega" type="text" id="dia_entrega" value="{{ isset($catalogoconstancia->dia_entrega) ? $catalogoconstancia->dia_entrega : ''}}" required>
    {!! $errors->first('dia_entrega', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    <input class="btn btn-primary" type="submit" value="{{ $formMode === 'edit' ? 'Update' : 'Create' }}">
</div>
