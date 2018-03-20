<div class="row">
	<div class="col-md-12">
<div class="card">
  <div class="card-header" data-background-color="blue">
      <h4 class="title">Nuevo usuario</h4>
  </div>
  <div class="card-content table-responsive">

		<form class="form-horizontal" method="post" id="addproduct" action="index.php?view=adduser" role="form">


  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre*</label>
    <div class="col-md-6">
      <input type="text" name="name" class="form-control" id="name" placeholder="Nombre">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Apellido*</label>
    <div class="col-md-6">
      <input type="text" name="lastname" required class="form-control" id="lastname" placeholder="Apellido">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre de usuario*</label>
    <div class="col-md-6">
      <input type="text" name="username" class="form-control" required id="username" placeholder="Nombre de usuario">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Email*</label>
    <div class="col-md-6">
      <input type="text" name="email" class="form-control" id="email" placeholder="Email">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Contrase&ntilde;a</label>
    <div class="col-md-6">
      <input type="password" name="password" class="form-control" id="inputEmail1" placeholder="Contrase&ntilde;a">
    </div>
  </div>


  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Tipo</label>
    <div class="col-md-6">
<select name="kind" class="form-control" required>
    <option value="">-- SELECCIONE --</option>
    <option value="1">Administrador</option>
    <option value="2">Sistematizador</option>
    <option value="3">Consulta</option>
    <option value="4">Android - SySOP</option>
    <option value="5">Android - Jefatura</option>
    <option value="6">Android - MinVivienda</option>
    <option value="7">Android - MinSalud</option>
    <option value="8">Android - MPPEUCT</option>
    <option value="9">Android - MinTrabajo</option>
    <option value="10">Android - MinAlimentacion</option>
    <option value="11">Android - MinEducacion</option>
    <option value="12">Android - MinComunas</option>
    <option value="13">Android - BNBT</option>
    <option value="14">Android - Servicios</option>
    <option value="15">Android - Mision JGH</option>
    <option value="16">Android - Creditos</option>
    <option value="17">Android - IDENNA</option>
    <option value="18">Android - SAIME</option>
</select> 
   </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button type="submit" class="btn btn-primary">Agregar Usuario</button>
    </div>
  </div>
</form>
	</div>
</div>
</div>
</div>