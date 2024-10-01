<?php
include "php/includes/pure_header.php";

if (isset($_POST['updateuser'])) {
    $user_id = mysqli_real_escape_string($con, $_POST["user_id"]);
    $uname = mysqli_real_escape_string($con, $_POST["uname"]); 


    $updateuser = mysqli_query($con, "UPDATE `users` SET `UserName`='$uname' WHERE `UserID`='$user_id'");

    if ($updateuser) {
        echo "<script>alert('($uname) updated successfully in the system.')</script>";
        echo "<script>window.location.href = 'manage_users.php'</script>";
    } else {
        echo "<script>alert('Something went wrong in updating ($uname) user in the system.')</script>";
        echo "<script>window.location.href = 'manage_users.php'</script>";
    }
}

$user_id = $_GET['uid'];
$getuid = mysqli_query($con, "SELECT * FROM `users` WHERE `UserID` = '$user_id'");
$getuid_row = mysqli_fetch_assoc($getuid);
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
 
    <title>NARADA LTD - System</title>
</head>

<body>
    <div class="body-contents-wrapper">
    <?php include 'sidebar.php' ?>

        <div class="asideBarBacDrop"></div>

        <div class="contents">
            <?php include('php/includes/header.php'); ?>

            <div class="cont-container">
                <div class="form-content-wrapper">
                    <div class="form-header-content">
                        <div class="left-content mb-2">
                            <h4><i class="fa-solid fa-user"></i> Update User Details</h4>
                            <small class="text-muted">Carefully to update user details, 'Cause changes will be
                                changed.</small>
                        </div>
                    </div>

                    <?php
                    if (isset($_GET['msg'])) {
                    ?>
                        <div class="alert alert-success alert-dismissible fade show mt-3" role="alert" onclick="this.style.display = 'none'">
                            <strong>Users!</strong>
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
                    <form action="updateuser.php" method="post" enctype="multipart/form-data">
                        <div class="row mb-2">
                            <input type="hidden" name="user_id" value="<?= $getuid_row['UserID']; ?>">
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Username:</label>
                                    <input class="form-control" type="text" name="uname" value="<?= $getuid_row['UserName']; ?>" required>
                                </div>
                            </div> 
                        </div> 
                        <button type="submit" class="btn btn-outline-success formSubmitBtn" name="updateuser">UPDATE</button>
                        <div class="mt-5">
                            <div class="mb-3">
                                <span class="text-muted pb-3">(User password will automatically again set to the default
                                    one(RPCorporate@123) Password). Do it, If asked as support.</span>
                            </div>
                            <a href="php/u_u_password.php?uid=<?= $getuid_row['UserID']; ?>" class="btn btn-success" style="width: 100%;" onclick="return confirm('Are you sure to reset user password to the default one.')">Reset User Password</a>
                        </div>

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