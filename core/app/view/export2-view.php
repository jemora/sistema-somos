<?php

// CODIGO PARA PHP 7 

/* vars for export */
// database record to be exported
$db_record = 'ticket';
// optional where query
//$where = 'WHERE 1 ORDER BY 1';
// filename for export
$csv_filename = $db_record'.csv';
// database variables
$hostname = "localhost";
$user = "root";
$password = "123";
$database = "somos";
$port = 3306;
$con = mysqli_connect($hostname, $user, $password, $database, $port);
if (mysqli_connect_errno()) {
    die("Falló al conectar a MySQL: " . mysqli_connect_error());
}
// create empty variable to be filled with export data
$csv_export = '';
// query to get data from database
$query = mysqli_query($con, "SELECT * FROM ".$db_record." ".$where);
$field = mysqli_field_count($con);
// create line with field names
for($i = 0; $i < $field; $i++) {
    $csv_export.= mysqli_fetch_field_direct($query, $i)->name.';';
}
// newline (seems to work both on Linux & Windows servers)
$csv_export.= '
';
// loop through database query and fill export variable
while($row = mysqli_fetch_array($query)) {
    // create line with field values
    for($i = 0; $i < $field; $i++) {
        $csv_export.= '"'.$row[mysqli_fetch_field_direct($query, $i)->name].'";';
    }
    $csv_export.= '
';
}
// Export the data and prompt a csv file for download
header("Content-type: text/x-csv");
header("Content-Disposition: attachment; filename=".$csv_filename."");
echo($csv_export);
	Core::alert("Exportado exitosamente!", $con);
	Core::redir("./index.php?view=home");

?>