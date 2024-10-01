<?php
include "php/includes/pure_header.php";
if (isset($_POST['changepassword'])) {
    $uid = mysqli_real_escape_string($con, $_POST['uid']);
    $currentpass = mysqli_real_escape_string($con, $_POST['currentpass']);
    $pass1 = $user['UserPWD'];
    $newpass = mysqli_real_escape_string($con, $_POST['newpass']);
    $confirmnewpass = mysqli_real_escape_string($con, $_POST['confirmnewpass']);

    if (password_verify($currentpass, $pass1)) {
        if ($newpass != $confirmnewpass) {
            header("Location: settings_password.php?msg=Password doesn't match.");
        } elseif (strlen($newpass) < 4) {
            header("Location: settings_password.php?msg=Password is too short at least 4 characters.");
        } else {
            $hpass = password_hash($newpass, PASSWORD_DEFAULT);
            $update = mysqli_query($con, "UPDATE `users` SET `UserPWD` = '$hpass' WHERE `UserID` = '$uid'");

            if ($update) {
                header("Location: settings_password.php?msg=Password Changed Successfully.");
            } else {
                header("Location: settings_password.php?msg=Something went wrong in changing password.");
            }
        }
    } else {
        header("Location: settings_password.php?msg=Sorry, Incorrect Current Password. Try Again.");
    }
} 
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <link rel="stylesheet" href="extensions/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="extensions/bootstrap/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="extensions/fontawesome/css/all.css">
    <link rel="icon" href="assets/images/logo.png">
    <link rel="stylesheet" href="assets/css/main.css">
 
    <title>RP  - System</title>
</head>

<body>
    <div class="body-contents-wrapper">
    <?php include 'sidebar.php' ?>

        <div class="asideBarBacDrop"></div>

        <div class="contents">
            <?php include('php/includes/header.php'); ?>

            <div class="cont-container">

                <header class="header-content">
                    Manage Profile / <span>Password</span>
                </header>

                <div class="pro-settings">
                    <div class="pro-header-links">
                        <a href="settings.php"><i class="fa-solid fa-user"></i> Profile</a>
                        <a href="#already" class="active"><i class="fa-solid fa-lock"></i> Password</a>
                    </div>
                </div>
                <?php
                if (isset($_GET['msg'])) {
                ?>
                    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert" onclick="this.style.display = 'none'">
                        <strong>Profile Changing!</strong>
                        <?= $_GET['msg']; ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <?php
                } else {
                    echo "";
                }
                ?>

                <div class="form-content-wrapper passwordForm">
                    <div class="normalHeader">
                        <h5>Change Password</h5>
                    </div>
                    <form action="settings_password.php" method="post" autocomplete="off">
                        <input type="hidden" name="uid" value="<?= $user['UserID']; ?>">
                        
                        <div class="field">
                            <!-- <?= $user['UserPWD'];?> -->
                            <label>Current Password:</label>
                            <input type="password" name="currentpass" placeholder="Current password..." class="form-control" required>
                        </div>
                        <div class="field">
                            <label>New Password:</label>
                            <input type="password" name="newpass" placeholder="New password..." class="form-control" required>
                        </div>
                        <div class="field">
                            <label>Confirm New Password:</label>
                            <input type="password" name="confirmnewpass" placeholder="Confirm new password..." class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-success formSubmitBtn" name="changepassword">Change</button>
                    </form>
                </div>

                <?php include('php/includes/Rlinks.php'); ?>

                <?php include('php/includes/footer.php'); ?>
            </div>

        </div>
    </div>

    <script src="assets/js/main.js"></script>
</body>

</html>