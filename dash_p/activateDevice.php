<?php 
if(isset($_GET['uuid'])){
    include "php/includes/pure_header.php";
    date_default_timezone_set('Africa/cairo');
    $uuid = $_GET['uuid'];
    $update = $con->query(" UPDATE device SET isActive = 1 WHERE deviceUID = '$uuid' ");
    header('location: devices.php?msg=Device activated');
}
    
?>