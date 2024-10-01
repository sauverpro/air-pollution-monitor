<?php
session_start();
echo "<script>alert('You are no longer have access to the system.')</script>";
echo "<script>window.location.href = '../login.php'</script>";
session_unset();
session_destroy();
?>