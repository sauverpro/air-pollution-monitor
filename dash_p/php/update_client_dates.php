<?php
include "includes/pure_header_in_php.php";
date_default_timezone_set('Africa/cairo');
// Function to calculate the end of payment date
function calculateEndOfPaymentDate($installationDate) {
    return date('Y-m-d', strtotime($installationDate . ' + 42 months'));
}

// Fetch all clients
$query = "SELECT clientUID, installation_date FROM clients";
$result = $con->query($query);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $clientUID = $row['clientUID'];
        $installationDate = $row['installation_date'];
        $endOfPaymentDate = calculateEndOfPaymentDate($installationDate);

        // Update the client's record with the end of payment date
        $updateQuery = "UPDATE clients SET finishing_date = '$endOfPaymentDate' WHERE clientUID = '$clientUID'";
        if ($con->query($updateQuery) === TRUE) {
            echo "Record updated successfully for client $clientUID<br>";
        } else {
            echo "Error updating record for client $clientUID: " . $con->error . "<br>";
        }
    }
} else {
    echo "No clients found.";
}

$con->close();
?>
