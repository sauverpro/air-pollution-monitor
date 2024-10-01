<?php
if (isset($_GET['uuid'])) {
    include "php/includes/pure_header.php";
    date_default_timezone_set('Africa/Cairo');
    $uuid = $_GET['uuid'];

    $update = $con->query("UPDATE device SET isActive = 0 WHERE deviceUID = '$uuid'");

    if ($update) {
        $message = "Device updated successfully";

        echo '<meta http-equiv="refresh" content="3; url=devices.php?msg=' . $message . '">';
    }
} else {
    $message = "Failed to update device status.";

    echo '<meta http-equiv="refresh" content="3; url=devices.php?msg=' . $message . '">';
}
