<?php 
/**
* @author Jaime Ernesto Mora
* jemora70@gmail.com  // jemora@jemora.org.ve
* MPPEUCT Unidad Territorial Fundacite Amazonas
* Sistema de Registro y seguimiento de Casos Mesa de Soluciones del Gobierno Bolivariano en Amazonas
* Licencia GPL v3
*
* Actualizado al 16-07-2017
**/
$reservation = TicketData::getById($_GET["id"]);
$pacients = ProjectData::getAll();
$medics = PriorityData::getAll();
$statuses = StatusData::getAll();
$payments = KindData::getAll();
?>
<div class="row">
	<div class="col-md-12">

<div class="card">
  <div class="card-header" data-background-color="blue">
      <h4 class="title">Modificar Caso</h4>
  </div>
  <div class="card-content table-responsive">
<form class="form-horizontal" role="form" method="post" action="./?action=updateticket">

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Tipo</label>
    <div class="col-lg-10">
<select name="kind_id" class="form-control" required>
  <?php foreach($payments as $p):?>
    <option value="<?php echo $p->id; ?>" <?php if($p->id==$reservation->kind_id){ echo "selected"; }?>><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
    </div>
  </div>
  
  
  
 <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Cédula</label>
    <div class="col-lg-10">
      <input type="text" name="cedula" value="<?php echo $reservation->cedula; ?>" required class="form-control" id="inputEmail1" placeholder="cedula">
    </div>
  </div>  
  
<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Carnet</label>
    <div class="col-lg-10">
      <input type="text" name="carnet" value="<?php echo $reservation->carnet; ?>" required class="form-control" id="inputEmail1" placeholder="carnet">
    </div>
  </div>  
    
  
  
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre y Apellido</label>
    <div class="col-lg-10">
      <input type="text" name="title" value="<?php echo $reservation->title; ?>" required class="form-control" id="inputEmail1" placeholder="Asunto">
    </div>
  </div>


<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Edad</label>
    <div class="col-lg-10">
      <input type="text" name="edad" value="<?php echo $reservation->edad; ?>" required class="form-control" id="inputEmail1" placeholder="Edad">
    </div>
  </div>  

<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Dirección</label>
    <div class="col-lg-10">
      <input type="text" name="direccion" value="<?php echo $reservation->direccion; ?>" required class="form-control" id="inputEmail1" placeholder="Dirección de Residencia">
    </div>
  </div>  

<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Teléfonos</label>
    <div class="col-lg-10">
      <input type="text" name="telefono" value="<?php echo $reservation->telefono; ?>" required class="form-control" id="inputEmail1" placeholder="Teléfonos">
    </div>
  </div>  

<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Carga Familiar</label>
    <div class="col-lg-10">
      <input type="text" name="cargaFam" value="<?php echo $reservation->cargaFam; ?>" required class="form-control" id="inputEmail1" placeholder="Cantidad personas a su cargo">
    </div>
  </div>  




  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Solicitud</label>
    <div class="col-lg-10">
    <textarea class="form-control" name="description" placeholder="Ingrese solicitud del Ciudadano(a)"><?php echo $reservation->description;?></textarea>
    </div>

  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Institución a asignar</label>
    <div class="col-lg-4">
<select name="project_id" class="form-control" required>
<option value="">-- SELECCIONE --</option>
  <?php foreach($pacients as $p):?>
    <option value="<?php echo $p->id; ?>" <?php if($p->id==$reservation->project_id){ echo "selected"; }?>><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
    </div>
    <label for="inputEmail1" class="col-lg-2 control-label">Categoría</label>
    <div class="col-lg-4">
<select name="category_id" class="form-control" required>
<option value="">-- SELECCIONE --</option>
  <?php foreach(CategoryData::getAll() as $p):?>
    <option value="<?php echo $p->id; ?>" <?php if($p->id==$reservation->category_id){ echo "selected"; }?>><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
    </div>

  </div>


  <div class="form-group">

    <label for="inputEmail1" class="col-lg-2 control-label">Prioridad</label>
    <div class="col-lg-4">
<select name="priority_id" class="form-control" required>
<option value="">-- SELECCIONE --</option>
  <?php foreach($medics as $p):?>
    <option value="<?php echo $p->id; ?>" <?php if($p->id==$reservation->priority_id){ echo "selected"; }?>><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
    </div>
    <label for="inputEmail1" class="col-lg-2 control-label">Status</label>
    <div class="col-lg-4">
<select name="status_id" class="form-control" required>
  <?php foreach($statuses as $p):?>
    <option value="<?php echo $p->id; ?>" <?php if($p->id==$reservation->status_id){ echo "selected"; }?>><?php echo $p->name; ?></option>
  <?php endforeach; ?>
</select>
    </div>
  </div>
  <div class="form-group">

  </div>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
    <input type="hidden" name="id" value="<?php echo $reservation->id; ?>">
      <button type="submit" class="btn btn-default">Actualizar Caso</button>
    </div>
  </div>
</form>
</div>
</div>
	</div>
</div>