<?php
//setting header to json
header('Content-Type: application/json');
//database
define('DB_HOST', '127.0.0.1');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'keysight');
//get connection
$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if(!$mysqli){
	die("Connection failed: " . $mysqli->error);
}
//query to get data from the table
$query = sprintf("SELECT DISTINCT `Customer Country` as Country,`Total Cost` as Cost FROM `analysis_table`");
//execute query
$results = $mysqli->query($query);

$geo_chart_data = array(array("Country", "Cost"));

foreach($results as $result)
 {
  $geo_chart_data[] = array($result['Country'], (int)$result['Cost']);
 }
$geo_chart_data = json_encode($geo_chart_data);


// //loop through the returned data
// $data = array();
// foreach ($result as $row) {
// 	$data[] = $row;
// }
// //free memory associated with result
// $result->close();
// //close connection
// $mysqli->close();
//now print the data
print json_encode($geo_chart_data);