<?php
include "includes/pure_header_in_php.php";
date_default_timezone_set('Africa/Cairo');
function getSensorData($deviceId)
{
    global $con;
    // Sanitize the input to prevent SQL injection
    $deviceId = $con->real_escape_string($deviceId);
    // Modify SQL to filter by the provided deviceId
    $sql = "SELECT * FROM sensors, device
            WHERE device.deviceUID = sensors.deviceUID  
            AND device.deviceUID = '$deviceId'";  // Add deviceId condition

    $result = $con->query($sql);
    $data = array();
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
    return $data;
}

// Check if the GET request is for fetching data
if ($_SERVER["REQUEST_METHOD"] === "GET" && isset($_GET["action"]) && $_GET["action"] === "get_data" && isset($_GET['id'])) {
    $deviceId = $_GET['id']; // Get the deviceId from the query parameter
    header('Content-Type: application/json');
    echo json_encode(getSensorData($deviceId));  // Pass deviceId to the function
} else {
    echo "Invalid request method or missing parameters";
}
$con->close();
