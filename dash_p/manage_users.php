<?php
include "php/includes/pure_header.php";

$selectusers = mysqli_query($con, "SELECT * FROM users WHERE UserID != '$user_uniqueid'");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 
        Contents and all features developed in this system.
        Prepared and developed by @Prince Parfait - +(250) 7 9205 4846
        Email Address: ganzaparfait7@gmail.com
     -->

    <link rel="stylesheet" href="extensions/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="extensions/bootstrap/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="extensions/fontawesome/css/all.css">
    <link rel="icon" href="assets/images/logo.png">
    <link rel="stylesheet" href="assets/css/main.css">

    <!-- 
        *****************************************************************

            ___________________________

                All Assets from assets/folder/to/in/this/file...
            ___________________________

        *****************************************************************
      -->
    <title>NARADA LTD - System</title>
</head>

<body>
    <div class="body-contents-wrapper">
    <?php include 'sidebar.php' ?>

        <div class="asideBarBacDrop"></div>

        <div class="contents">
            <?php include('php/includes/header.php'); ?>

            <div class="cont-container">
                <div class="table-container">
                    <h4 class="mb-4">Manage Users</h4>
                    <div class="table-header-contents">
                        <div class="search-record-container">
                            <div class="uuu">
                                <input type="search" name="search" id="searchInput" placeholder="Search..." class="form-control">
                                <i class="fa-solid fa-search faSearch"></i>
                            </div>
                        </div>
                        <div class="right-table-content">
                            <a href="adduser.php" class="btn btn-success btn-sm">+</a>
                        </div>
                    </div>

                    <div class="pure-table">
                        <table class="table table-hover pureTable" id="myTable">
                            <thead class="bg-dark text-light">
                                <tr>
                                    <th>#</th>
                                    <th>UserName</th> 
                                    <th class="datatable-nosort">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $c = 1;
                                // $selectusers = mysqli_query($con, "SELECT * FROM users WHERE `isDeleted` = 'notDeleted' AND `Role` != 'admin'");
                                if (mysqli_num_rows($selectusers) > 0) {
                                    while ($row = mysqli_fetch_assoc($selectusers)) {
                                ?>
                                        <tr>
                                            <td>
                                                <?= $c++; ?>
                                            </td>
                                            <td>
                                                <?= $row['UserName']; ?>
                                            </td> 
                                            <td>
                                                <div class="table-actions" style="display: flex;">
                                                    <a href="updateuser.php?uid=<?= $row['UserID']; ?>" class="btn btn-success btn-sm mr-1"><i class="fa-solid fa-pen-to-square"></i></a>
                                                    <a onclick="return confirm('Are you sure to delete this user in the system.')" href="php/deleteuser.php?uid=<?= $row['UserID']; ?>" class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                <?php
                                    }
                                } else {
                                    $msg[] = "No users available";
                                }
                                ?>
                            </tbody>
                        </table>
                        <div id="outputMessage" class="text-center"></div>
                        <?php
                        if (isset($msg)) {
                            foreach ($msg as $printmsg) {
                        ?>
                                <p class="text-center">
                                    <?php echo $printmsg; ?>
                                </p>
                        <?php
                            }
                        }
                        ?>
                    </div>
                </div>

                <?php include('php/includes/Rlinks.php'); ?>

                <?php include('php/includes/footer.php'); ?>
            </div>

        </div>
    </div>

    <script src="assets/js/main.js"></script>
    <script src="assets/js/searchTable.js"></script>
</body>

</html>