<?php

// CODIGO PARA PHP 5

/* vars for export */
// database record to be exported
$db_record = 'category';
// optional where query
//$where = 'WHERE 1 ORDER BY 1';
// filename for export
$csv_filename = $db_record.'.csv';
// database variables
$hostname = "localhost";
$user = "root";
$password = "amazonas";
$database = "somos";
// Database connecten voor alle services
mysql_connect($hostname, $user, $password)
or die('Could not connect: ' . mysql_error());
					
mysql_select_db($database)
or die ('Could not select database ' . mysql_error());
// create empty variable to be filled with export data
$csv_export = '';
// query to get data from database
$query = mysql_query("SELECT * FROM ".$db_record." ".$where);
$field = mysql_num_fields($query);
// create line with field names
for($i = 0; $i < $field; $i++) {
  $csv_export.= mysql_field_name($query,$i).';';
}
// newline (seems to work both on Linux & Windows servers)
$csv_export.= '
';
// loop through database query and fill export variable
while($row = mysql_fetch_array($query)) {
  // create line with field values
  for($i = 0; $i < $field; $i++) {
    $csv_export.= '"'.$row[mysql_field_name($query,$i)].'";';
  }	
  $csv_export.= '
';	
}
// Export the data and prompt a csv file for download
header("Content-type: text/x-csv");
header("Content-Disposition: attachment; filename=".$csv_filename."");
echo($csv_export);
	//Core::redir("./exportar/exp_kind.php");
	
?>