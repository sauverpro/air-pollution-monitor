<?php
include "php/includes/pure_header.php";

if (isset($_POST['changeprofile'])) {
    $uid = mysqli_real_escape_string($con, $_POST['uid']);
    $uname = mysqli_real_escape_string($con, $_POST['uname']); 


    $update = mysqli_query($con, "UPDATE `users` SET `UserName`='$uname' WHERE `UserID`='$uid'");
    if ($update) {
        header('Location: settings.php?msg=Your profile has been Changed successfully!');
    } else {
        header('Location: settings.php?msg=Sorry! Something went wrong in changing your profile.' . mysqli_error($con));
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
                    Manage Profile / <span>User</span>
                </header>

                <div class="pro-settings">
                    <div class="pro-header-links">
                        <a href="#already" class="active"><i class="fa-solid fa-user"></i> Profile</a>
                        <a href="settings_password.php"><i class="fa-solid fa-lock"></i> Password</a>
                    </div>
                </div>

                <div class="form-content-wrapper">
                    <div class="form-header-content">
                        <div class="left-content mb-2">
                            <h4><i class="fa-solid fa-user"></i> Profile Details</h4>
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

                    <form action="settings.php" method="post" enctype="multipart/form-data">
                        <div class="row mb-2">
                            <div class="col-md-6">
                                <input type="hidden" name="uid" value="<?= $user['UserID']; ?>">
                                <div class="field">
                                    <label>UserName:</label>
                                    <input class="form-control" type="text" name="uname" value="<?= $user['UserName']; ?>" required>
                                </div>
                            </div> 
                        </div>
                        <div class="field">
                            <label>Role:</label>
                            <input class="form-control" type="text" name="role" value="User" disabled>
                        </div>

                        <button type="submit" class="btn btn-outline-primary formSubmitBtn" name="changeprofile">Save</button>
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