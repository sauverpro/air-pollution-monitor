<?php
session_start();
include "config.php";

if (isset($_SESSION['log_uni_id'])) {
    $selectuser = mysqli_query($con, "SELECT * FROM `users` WHERE `UserID` = {$_SESSION['log_uni_id']}");
    $user = mysqli_fetch_assoc($selectuser);
    $unid = $user['UserID'];
    $fname = $user['UserName'];
    $names = $user['UserName'];
} else if (isset($_SESSION['id'])) {
    $selectclient = mysqli_query($con, "SELECT * FROM `clients` WHERE `clientUID` = {$_SESSION['id']}");
    $user = mysqli_fetch_assoc($selectclient);
    $unid = $user['clientUID'];
    $fname = $user['names'];
    $names = $user['names'];
} else {
    echo "<script>console.log(".$_SESSION['id'].") </script>";
    echo "<script>alert('You must login first. hello')</script>";
    echo "<script>window.location.href = '../index.php'</script>";
}
$user_uniqueid = $unid;
?>