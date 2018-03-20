<?php $user = UserData::getById($_GET["id"]);?>
<div class="row">
	<div class="col-md-12">
<div class="card">
  <div class="card-header" data-background-color="blue">
      <h4 class="title">Editar Usuario</h4>
  </div>
  <div class="card-content table-responsive">

		<form class="form-horizontal" method="post" id="addproduct" action="index.php?view=updateuser" role="form">


  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre*</label>
    <div class="col-md-6">
      <input type="text" name="name" value="<?php echo $user->name;?>" class="form-control" id="name" placeholder="Nombre">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Apellido*</label>
    <div class="col-md-6">
      <input type="text" name="lastname" value="<?php echo $user->lastname;?>" required class="form-control" id="lastname" placeholder="Apellido">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Nombre de usuario*</label>
    <div class="col-md-6">
      <input type="text" name="username" value="<?php echo $user->username;?>" class="form-control" required id="username" placeholder="Nombre de usuario">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Email*</label>
    <div class="col-md-6">
      <input type="text" name="email" value="<?php echo $user->email;?>" class="form-control" id="email" placeholder="Email">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Contrase&ntilde;a</label>
    <div class="col-md-6">
      <input type="password" name="password" class="form-control" id="inputEmail1" placeholder="Contrase&ntilde;a">
<p class="help-block">La contrase&ntilde;a solo se modificara si escribes algo, en caso contrario no se modifica.</p>
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label" >Esta activo</label>
    <div class="col-md-6">
<div class="checkbox">
    <label>
      <input type="checkbox" name="is_active" <?php if($user->is_active){ echo "checked";}?>> 
    </label>
  </div>
    </div>
  </div>


<div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Tipo</label>
    <div class="col-md-6">
<select name="kind" class="form-control" required>
    <option value="">-- SELECCIONE --</option>
    <option value="1" <?php if($user->kind==1){ echo "selected"; }?>>Administrador</option>
    <option value="2" <?php if($user->kind==2){ echo "selected"; }?>>Sistematizador</option>
    <option value="3" <?php if($user->kind==3){ echo "selected"; }?>>Consulta</option>
    <option value="4" <?php if($user->kind==4){ echo "selected"; }?>>Android - SySOP</option>
    <option value="5" <?php if($user->kind==5){ echo "selected"; }?>>Android - Jefatura</option>    
    <option value="6" <?php if($user->kind==6){ echo "selected"; }?>>Android - MinVivienda</option>
    <option value="7" <?php if($user->kind==7){ echo "selected"; }?>>Android - MinSalud</option>
    <option value="8" <?php if($user->kind==8){ echo "selected"; }?>>Android - MPPEUCT</option>
    <option value="9" <?php if($user->kind==9){ echo "selected"; }?>>Android - MinTrabajo</option>
    <option value="10" <?php if($user->kind==10){ echo "selected"; }?>>Android - MinAlimentacion</option>
    <option value="11" <?php if($user->kind==11){ echo "selected"; }?>>Android - MinEducacion</option>
    <option value="12" <?php if($user->kind==12){ echo "selected"; }?>>Android - MinComunas</option>
    <option value="13" <?php if($user->kind==13){ echo "selected"; }?>>Android - BNBT</option>
    <option value="14" <?php if($user->kind==14){ echo "selected"; }?>>Android - Servicios</option>
    <option value="15" <?php if($user->kind==15){ echo "selected"; }?>>Android - Mision JGH</option>
    <option value="16" <?php if($user->kind==16){ echo "selected"; }?>>Android - Créditos</option>
    <option value="17" <?php if($user->kind==17){ echo "selected"; }?>>Android - IDENNA</option>
    <option value="18" <?php if($user->kind==18){ echo "selected"; }?>>Android - SAIME</option>
</select> 
   </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
    <input type="hidden" name="user_id" value="<?php echo $user->id;?>">
      <button type="submit" class="btn btn-primary">Actualizar Usuario</button>
    </div>
  </div>
</form>
	</div>
</div>
</div>
</div>