<?php
$mysqli = new mysqli('localhost','root','','mobileappdb');
$myArray = array();
$result = $mysqli->query("SELECT * FROM employees");
while($row = $result->fetch_assoc()) {
    $myArray[] = $row;
}
echo json_encode($myArray);
?>