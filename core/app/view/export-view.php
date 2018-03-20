<?php
	Core::alert("Presione OK para iniciar proceso...");
	//Core::redir("./index.php?view=exp_ticket");
	//Core::redir("./prueba/prueba_php7.php");
	//Core::system('../exportar/exp_todo.sh');
	//shell_exec('sh /exportar/exp_todo.sh');	
	Core::alert("Proceso culminado con éxito...");
	Core::redir("./index.php?view=home");
?>

