<?php 
$con = mysqli_connect("localhost", "root", "", "air_pollution");
// ini_set("display_errors", "Off");
// $con = new mysqli("localhost:3306","iotpolys_sensors","iotpolystar123","iotpolys_sensors");
 
if ($con) {
    // echo "Connected successfully";
} else {
    die("Failed to connect." . mysqli_connect_error());
}
 
