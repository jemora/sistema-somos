<div class="row">
	<div class="col-md-12">

<div class="card">
  <div class="card-header" data-background-color="blue">
      <h4 class="title">Usuarios</h4>
  </div>
  <div class="card-content table-responsive">


	<a href="index.php?view=newuser" class="btn btn-default"><i class='fa fa-user'></i> Nuevo Usuario</a>
<br>
	
		<?php

		$users = UserData::getAll();
		if(count($users)>0){
			// si hay usuarios
			?>
			<table class="table table-bordered table-hover">
			<thead>
			<th>Nombre completo</th>
			<th>Email</th>
			<th>Username</th>
			<th>Activo</th>
			<th>Tipo</th>
			<th></th>
			</thead>
			<?php
			foreach($users as $user){
				?>
				<tr>
				<td><?php echo $user->name." ".$user->lastname; ?></td>
				<td><?php echo $user->email; ?></td>
				<td><?php echo $user->username; ?></td>
				<td>
					<?php if($user->is_active):?>
						<i class="fa fa-check"></i>
					<?php endif; ?>
				</td>
				<td>
					<?php if($user->kind==1):?>
					Administrador
					<?php elseif($user->kind==2):?>
					Sistematizador
					<?php elseif($user->kind==3):?>
					Consulta
					<?php elseif($user->kind==4):?>
					Android - SySOP
					<?php elseif($user->kind==5):?>
					Android - Jefatura
					<?php elseif($user->kind==6):?>
					Android - MinVivienda
					<?php elseif($user->kind==7):?>
					Android - MinSalud
					<?php elseif($user->kind==8):?>
					Android - MPPEUCT
					<?php elseif($user->kind==9):?>
					Android - MinTrabajo
					<?php elseif($user->kind==10):?>
					Android - MinAlimentacion
					<?php elseif($user->kind==11):?>
					Android - MinEducacion
					<?php elseif($user->kind==12):?>
					Android - MinComunas
					<?php elseif($user->kind==13):?>
					Android - BNBT
					<?php elseif($user->kind==14):?>
					Android - Servicios
					<?php elseif($user->kind==15):?>
					Android - Mision JGH
					<?php elseif($user->kind==16):?>
					Android - Creditos
					<?php elseif($user->kind==17):?>
					Android - IDENNA
					<?php elseif($user->kind==18):?>
					Android - SAIME
					<?php endif; ?>
					
				</td>
				<td style="width:180px;">
				<a href="index.php?view=edituser&id=<?php echo $user->id;?>" class="btn btn-warning btn-xs">Editar</a>
<a href="index.php?action=deluser&id=<?php echo $user->id;?>" class="btn btn-danger btn-xs">Eliminar</a>
				</td>
				</tr>
				<?php

			}
			?>
			</table>
			<?php



		}else{
			// no hay usuarios
		}


		?>

</div>
</div>
	</div>
</div>