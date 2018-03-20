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

if(count($_POST)>0){
	$user = TicketData::getById($_POST["id"]);
	$user->cedula = $_POST["cedula"];
	$user->carnet = $_POST["carnet"];
	$user->title = $_POST["title"];
	$user->edad = $_POST["edad"];
	$user->direccion = $_POST["direccion"];
	$user->telefono = $_POST["telefono"];
	$user->cargaFam = $_POST["cargaFam"];
	$user->category_id = $_POST["category_id"];
	$user->project_id = $_POST["project_id"];
	$user->priority_id = $_POST["priority_id"];
	$user->description = $_POST["description"];
	
	$user->asigned_id = $_POST["project_id"];
	
	$user->status_id = $_POST["status_id"];
	$user->kind_id = $_POST["kind_id"];
	$user->updated_at = "NOW()";
	
	$user->update();

Core::alert("Caso Actualizado exitosamente!");
print "<script>window.location='index.php?view=tickets';</script>";


}


?>