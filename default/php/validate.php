<?php
    session_start();
    include "config.php";

    if (!isset($_SESSION['log_uni_id'])) {
        header("Location: ../login.php");
    }
    $sql = mysqli_query($con, "SELECT * FROM `users` WHERE `Unique_id` = {$_SESSION['log_uni_id']}");
    $row = mysqli_fetch_assoc($sql);
    $row_role = strtolower($row['Role']);

    if ($row_role == 'admin') {
        if ($row_role == 'admin' && $row['Access'] == 'Granted' || $row['Access'] != 'Granted') {
            $_SESSION['admin_uni_id'] = $row['Unique_id'];
            if (isset($_SESSION['admin_uni_id'])) {
                echo "<script>window.location.href='../../admin/index.php'</script>";
            }
        } else {
            echo "<script>alert('Sorry! You are no longer have access.')</script>";
            echo "<script>window.location.href='../login.php'</script>";
        }
    } elseif ($row_role == 'user') {
        if ($row_role == 'user' && $row['Access'] == 'Granted') {
            $_SESSION['user_uni_id'] = $row['Unique_id'];
            if (isset($_SESSION['user_uni_id'])) {
                echo "<script>window.location.href='../../user/index.php'</script>";
            }
        } else {
            echo "<script>alert('Sorry! You are no longer have access.')</script>";
            echo "<script>window.location.href='../login.php'</script>";
        }
    } else {
        echo "<script>window.location.href = '../error.php'</script>";
    }

?>