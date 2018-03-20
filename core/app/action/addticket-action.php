<?php
/**
* @author Jaime Ernesto Mora
* jemora70@gmail.com  // jemora@jemora.org.ve
* MPPEUCT Unidad Territorial Fundacite Amazonas
* Sistema de Registro y seguimiento de Casos Mesa de Soluciones del Gobierno Bolivariano en Amazonas
* Licencia GPL v3
**/


$r = new TicketData();
$r->cedula = $_POST["cedula"];
$r->carnet = $_POST["carnet"];
$r->title = $_POST["title"];

$r->edad = $_POST["edad"];
$r->direccion = $_POST["direccion"];
$r->telefono = $_POST["telefono"];
$r->cargaFam = $_POST["cargaFam"];
$r->description = $_POST["description"];
$r->category_id = $_POST["category_id"];
$r->project_id = $_POST["project_id"];

		$r->asigned_id = $_POST["project_id"];

$r->priority_id = $_POST["priority_id"];
$r->user_id = $_SESSION["user_id"];
$r->status_id = $_POST["status_id"];
$r->kind_id = $_POST["kind_id"];


$r->add();

Core::alert("Caso Agregado exitosamente!");
Core::redir("./index.php?view=tickets");
?>