<?php
/**
* @author Jaime Ernesto Mora
* jemora70@gmail.com  // jemora@jemora.org.ve
* MPPEUCT Unidad Territorial Fundacite Amazonas
* Sistema de Registro y seguimiento de Casos Mesa de Soluciones del Gobierno Bolivariano en Amazonas
* Licencia GPL v3
**/
$projects = ProjectData::getAll();
$priorities = PriorityData::getAll();

$statuses = StatusData::getAll();
$kinds = KindData::getAll();

?>

<div class="row">
<div class="col-md-12">
<div class="card">
  <div class="card-header" data-background-color="blue">
      <h4 class="title">Nuevo Caso</h4>
  </div>
  <div class="card-content table-responsive">
<form class="form-horizontal" role="form" method="post" action="./?action=addticket">

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Tipo</label>
    <div class="col-lg-10">
<select name="kind_id" class="form-control" required>
  <?php foreach($kinds as $p):?>
    <option value="<?php echo $p->id; ?>"><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
    </div>
  </div>
  


<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Cédula</label>
    <div class="col-lg-10">
      <input type="text" name="cedula" required class="form-control" id="inputEmail1" placeholder="Cédula de identidad">
    </div>
</div>


<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Carnet</label>
    <div class="col-lg-10">
      <input type="text" name="carnet" required class="form-control" id="inputEmail1" placeholder="Código Carnet de la Patria">
    </div>
</div>
  
<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre/Apellido</label>
    <div class="col-lg-10">
      <input type="text" name="title" required class="form-control" id="inputEmail1" placeholder="Nombre y Apellido">
    </div>
</div>
  

<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Edad</label>
    <div class="col-lg-10">
      <input type="text" name="edad" required class="form-control" id="inputEmail1" placeholder="Edad">
    </div>
</div>
  

<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Dirección</label>
    <div class="col-lg-10">
      <input type="text" name="direccion" required class="form-control" id="inputEmail1" placeholder="Dirección de residencia">
    </div>
</div>
  
  
<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Teléfonos</label>
    <div class="col-lg-10">
      <input type="text" name="telefono" required class="form-control" id="inputEmail1" placeholder="Teléfonos">
    </div>
</div>

<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Carga Familiar</label>
    <div class="col-lg-10">
      <input type="text" name="cargaFam" required class="form-control" id="inputEmail1" placeholder="Cantidad personas a cargo">
    </div>
</div>    

  
<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Solicitud</label>
    <div class="col-lg-10">
    <textarea class="form-control" name="description" required placeholder="Ingrese solicitud del Ciudadano(a)"></textarea>
    </div>
</div>
  
  
<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Institución a asignar</label>
    <div class="col-lg-4">
		<select name="project_id" class="form-control" required>
		<option value="">-- SELECCIONE --</option>
		  <?php foreach($projects as $p):?>
		    <option value="<?php echo $p->id; ?>"><?php echo $p->name; ?></option>
		  <?php endforeach; ?>
		</select>
    </div>
    <label for="inputEmail1" class="col-lg-2 control-label">Categoria</label>
    <div class="col-lg-4">
		<select name="category_id" class="form-control" required>
		<option value="">-- SELECCIONE --</option>
		  <?php foreach(CategoryData::getAll() as $p):?>
		    <option value="<?php echo $p->id; ?>"><?php echo $p->name; ?></option>
		  <?php endforeach; ?>
		</select>
    </div>

  </div>
  <div class="form-group">
		    <label for="inputEmail1" class="col-lg-2 control-label">Prioridad</label>
		    <div class="col-lg-4">
				<select name="priority_id" class="form-control" required>
				<option value="">-- SELECCIONE --</option>
				  <?php foreach($priorities as $p):?>
				    <option value="<?php echo $p->id; ?>"><?php echo $p->name; ?></option>
				  <?php endforeach; ?>
				</select>
		    </div>
		
		    <label for="inputEmail1" class="col-lg-2 control-label">Status</label>
		    <div class="col-lg-4">
				<select name="status_id" class="form-control" required>
				  <?php foreach($statuses as $p):?>
				    <option value="<?php echo $p->id; ?>"><?php echo $p->name; ?></option>
				  <?php endforeach; ?>
				</select>
		    </div>
  </div>


  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button type="submit" class="btn btn-default">Agregar Caso</button>
    </div>
  </div>
</form>
</div>
</div>
</div>
</div>