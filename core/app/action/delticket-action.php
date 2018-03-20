<?php
/**
* @author Jaime Ernesto Mora
* jemora70@gmail.com  // jemora@jemora.org.ve
* MPPEUCT Unidad Territorial Fundacite Amazonas
* Sistema de Registro y seguimiento de Casos Mesa de Soluciones del Gobierno Bolivariano en Amazonas
* Licencia GPL v3
**/
$user = TicketData::getById($_GET["id"]);
$user->del();
print "<script>window.location='index.php?view=tickets';</script>";

?>