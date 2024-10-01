<?php
session_start();
include "config.php";

$uname_phone = mysqli_real_escape_string($con, $_POST["uname_phone"]);
$password = mysqli_real_escape_string($con, $_POST["password"]);

if (!empty($uname_phone) && !empty($password)) {
    if (is_numeric($uname_phone)) {
        // echo "yes";

        $User = $con->query("SELECT * FROM clients WHERE NID = '$uname_phone' AND phone = '$password'");
        if ($User->num_rows > 0) {
            $user = $User->fetch_assoc();
            $id = $user['clientUID'];
            $names = $user['names'];
            $_SESSION['id'] = $id;
            $_SESSION['names'] = $names;
            // header('location: ../viewClient.php');
            echo "welcome";
        } else {
            echo 'Incorrect Credentials ...! Try again click on sign in';
            // echo '<meta http-equiv="refresh" content="3; url=../index1.php">';
        }
    } else {
        $sql = mysqli_query($con, "SELECT * FROM `users` WHERE `UserName` = '$uname_phone'");
        $row = mysqli_fetch_assoc($sql);
        if (isset($_COOKIE['Password'])) {
            // If user db password doesn't match with cookie password, ask for his password manually

            if (password_verify($_COOKIE['Password'], $row['UserPWD'])) {
                $password = $_COOKIE['Password'];
            } else {
                $password = mysqli_real_escape_string($con, $_POST["password"]);
                setcookie('PhoneNumber/Email', '', time() - 1, "/"); // Expire cookie if not checked box
                setcookie('Password', '', time() - 1, "/");
            }
        } else {
            $password = mysqli_real_escape_string($con, $_POST["password"]);
        }
        if (mysqli_num_rows($sql) > 0) {
            if (password_verify($password, $row['UserPWD'])) {
                if (isset($_POST['rememberme'])) {
                    setcookie('PhoneNumber/Email', $uname_phone, time() + 60 * 60 * 7, "/"); // 7 days or (86400 * 30) 30 days
                    setcookie('Password', $password, time() + 3600 * 2, "/"); // 2 hours
                } else {
                    setcookie('PhoneNumber/Email', $uname_phone, time() - 10, "/"); // Expire cookie if not checked box
                    setcookie('Password', $password, time() - 10, "/");
                }
                // Change user status to active now if logged in again

                $_SESSION['log_uni_id'] = $row['UserID'];
                echo "success";
            } else {
                echo "Wrong Password";
            }
        } else {
            echo "Please Enter Valid Username";
        }
    }
} else {
    echo "All inputs are required";
}
