<?php
include "includes/pure_header_in_php.php";
date_default_timezone_set('Africa/Cairo');

$unique= uniqid();
$date = date('l d-m-Y h:i:s A');
$send = $con->query("INSERT INTO `device`(`deviceUID`, `IssueDate`) VALUES ('$unique', '$date')");
if ($send) {
     
    echo '<meta http-equiv="refresh" content="1; url=../devices.php?msg='.$message.'">';
} else {
    $message = "Failed to create Device";
    echo '<meta http-equiv="refresh" content="1; url=../devices.php?msg='.$message.'">';
}
?>