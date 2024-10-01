<?php
include "includes/pure_header_in_php.php";

$userid = $_GET["uid"];
$default_password = 'RPCorporate@123';
$hash_user_pass = password_hash($default_password, PASSWORD_DEFAULT);

$update_user_password = mysqli_query($con, "UPDATE `users` SET `UserPWD`='$hash_user_pass' WHERE `UserID` = '$userid'");
if ($update_user_password) {
    echo "<script>alert('User Password has been reset successfully to RPCorporate@123 as the default password.')</script>";
    echo "<script>window.location.href = '../manage_users.php'</script>";
    // If possible notify him that his/her password reset to the default password.
} else {
    echo "<script>alert('Something went wrong in resetting password to the default password.')</script>";
    echo "<script>window.location.href = '../manage_users.php'</script>";
}

?>