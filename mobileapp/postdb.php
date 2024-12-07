<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mobileappdb";
// $first_name = $_GET['first_name'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "INSERT INTO employees (employee_id, first_name, last_name) 
        VALUES (NULL, '$first_name', '$last_name')";
if ($conn->query($sql) === TRUE) {
    echo json_encode(array("New record created successfully"));
} else {
    echo json_encode(array("Error: " . $sql . "<br>" . $conn->error));
}
$conn->close();
?>