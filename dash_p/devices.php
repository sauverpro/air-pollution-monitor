<?php
include "php/includes/pure_header.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="extensions/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="extensions/bootstrap/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="extensions/fontawesome/css/all.css">
    <link rel="icon" href="assets/images/logo.jpg">
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
                <div class="table-container">
                    <div class="table-header-contents" style="position: relative;">
                        <div class="form-header-content">
                            <div class="left-content mb-2">
                                <h4><i class="fa-solid fa-ticket"></i>All devices</h4>
                                <small class="text-muted">All devices are listed below.</small>
                            </div>
                        </div>
                    </div>
                    <div class="search-record-container mb-3">
                        <div class="uuu">
                            <input type="search" name="search" id="searchInput" placeholder="Search..." class="form-control" style="border: 1px solid blue">
                            <i class="fa-solid fa-search faSearch"></i>
                        </div>
                        <div>
                            <!-- <button type="submit" name="search" class="btn btn-primary"><i
                                        class="fa-solid fa-search"></i></button> -->
                        </div>
                    </div>

                    <?php
                    if (isset($_GET['msg'])) {
                    ?>
                        <div class="alert alert-success alert-dismissible fade show mt-3" role="alert" onclick="this.style.display = 'none'">
                            <strong>Notice!</strong>
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

                    <div class="pure-table">
                        <table class="table table-hover pureTable data-table table" id="myTable">
                            <thead class="bg-dark text-light">
                                <th>#</th>
                                <th>Device Id</th>
                                <th>Device Status</th> 
                                <th>Action</th>
                            </thead>
                            <tbody>
                                <?php
                                $count = 1;
                                $getData = mysqli_query($con, "SELECT * FROM device ORDER BY device.deviceId DESC");
                                if (mysqli_num_rows($getData) > 0) {
                                    while ($row = mysqli_fetch_assoc($getData)) {
                                        $did = $row['deviceId'];
                                        $uuid = $row['deviceUID'];  
                                        if ($row['isActive'] == 1) {
                                            $active = "<span class='text-success' ><i class='fa-solid fa-circle-check'></i></span> ";
                                        } else if ($row['isActive'] == 3) {
                                            $active = "<span class='text-warning'><i class='fa-solid fa-bolt'></i></span> ";
                                        } else {
                                            $active = "<span class='text-danger' style='color: rgba(255, 0, 0, 0.8);'><i class='fa-solid fa-circle-xmark'></i></span>";
                                        }
                                        if ($row['isActive'] == 1) {
                                            $action = '<a class="btn btn-success text-white" href="deactivateDevice.php?uuid=' . $uuid . '">Deactivate</a>';
                                        } else {
                                            $action = '<a class="btn btn-danger text-white" href="activateDevice.php?uuid=' . $uuid . '">Activate</a>';
                                        }
                                ?>
                                        <tr>
                                            <td><?= $count++; ?></td>

                                            <td><?= $uuid; ?></td>
                                            <td><?= $active ?></td> 
                                            <td>
                                                <?= $action; ?>
                                            </td>
                                        </tr>
                                <?php
                                    }
                                } else {
                                    $msg[] = "No records found.";
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
    <script src="assets/js/exportToExcel.js"></script>
</body>

</html>