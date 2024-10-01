<?php
include "includes/pure_header_in_php.php";
date_default_timezone_set('Africa/cairo');
header("content-Type: application/json");
// SQL query to retrieve coordinates from the database
$sql = "SELECT latitude, longitudde FROM clients";
$result = $con->query($sql);

$coordinates = [];

if ($result->num_rows > 0) {
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        // Store coordinates in an array
        $coordinates[] = [ $row["longitudde"], $row["latitude"],];
    }
}
// Convert the PHP array to a JSON string and send it to the client
echo json_encode($coordinates);
?>
