<?php
$mysqli = new mysqli('localhost','root','','mobileappdb');
$myArray = array();
$employee_id = $_GET['employee_id'];
$result = $mysqli->query("SELECT * FROM employees WHERE employee_id = '$employee_id'");
while($row = $result->fetch_assoc()) {
    $myArray[] = $row;
}







echo json_encode($myArray);
?>