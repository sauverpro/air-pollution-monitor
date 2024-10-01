<?php
include "php/includes/pure_header.php";

if (isset($_POST['addnewuser'])) {
    $uname = mysqli_real_escape_string($con, $_POST["uname"]);
    $password = mysqli_real_escape_string($con, $_POST["password"]);

    $checkuname = mysqli_query($con, "SELECT * FROM `users` WHERE `UserName` = '$uname'");
    $rowuname = mysqli_fetch_assoc($checkuname);
    $takenUname = $rowuname['UserName'];
    if (mysqli_num_rows($checkuname) > 0) {
        header("Location: adduser.php?msg=$uname - This username available and already taken.");
    } else {
        if (empty($password)) {
            $password = "RPCorporate@123";
            $hash_pass = password_hash($password, PASSWORD_DEFAULT);
        } else {
            $password = mysqli_real_escape_string($con, $_POST["password"]);
            $hash_pass = password_hash($password, PASSWORD_DEFAULT);
        }
        $adduser = mysqli_query($con, "INSERT INTO `users`(`UserName`, `UserPWD`,`apiKey`)
        VALUES ('$uname','$hash_pass','21232f297a57a5a743894a0e4a801fc3')");

        if ($adduser) {
            header("Location: adduser.php?msg=$uname added successfully in the system.and password is $password");
        } else {
            header("Location: adduser.php?msg=Something went wrong in adding new user in the system.");
        }
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
                            <h4><i class="fa-solid fa-user"></i> Add New User</h4>
                            <small class="text-muted">This user will be added in the system. Once added.</small>
                        </div>
                        <div>
                            <a href="manage_users.php" class="btn btn-success btn-sm"><i class="fa-solid fa-table"></i></a>
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
                    <form action="adduser.php" method="post" enctype="multipart/form-data">
                        <div class="row mb-2">
                            <div class="col-md-6">
                                <div class="field">
                                    <label>UserName:</label>
                                    <input type="text" name="uname" placeholder="User name..." class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Password:<span class="text-muted">(Password will be
                                            (RPCorporate@123) for new user if left blank.)</span></label>
                                    <input type="password" name="password" placeholder="**********" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Role:</label>
                                    <select name="role" class="form-control" disabled required>
                                        <option value="user" selected hidden>User</option>
                                        <option value="User">User</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                        <button type="submit" class="btn btn-outline-success formSubmitBtn" name="addnewuser">ADD</button>
                    </form>
                </div>

                <?php include('php/includes/Rlinks.php'); ?>
                <?php include('php/includes/footer.php'); ?>
            </div>

        </div>
    </div>

    <script src="assets/js/main.js"></script>
    <script src="js/addressHandle.js"></script>
</body>

</html>