<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mobileappdb";

$employee_id = $_GET['employee_id'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "DELETE FROM employees WHERE employee_id = '$employee_id'";

if ($conn->query($sql) === TRUE) {
  echo json_encode(array("New record created successfully"));
} else {
  echo json_encode(array("Error" . $sql . "<br>" . $conn->error));
}

$conn->close();
?>