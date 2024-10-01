<?php
include "php/includes/pure_header.php";

$count_devices = mysqli_query($con, "SELECT * FROM `device` WHERE isActive = 1");
$total_devices = mysqli_num_rows($count_devices);
$count_inactive_devices = mysqli_query($con, "SELECT * FROM `device` WHERE isActive = 0");
$total_inactive_devices = mysqli_num_rows($count_inactive_devices);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="extensions/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="extensions/bootstrap/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="extensions/fontawesome/css/all.css">
    <script src="https://kit.fontawesome.com/cf03def005.js" crossorigin="anonymous"></script>

    <link rel="icon" href="assets/images/logo.jpg">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/ol@v8.1.0/ol.css" />
    <!-- end of map -->
    <title>RP - System</title>
    <style>
        table tr:nth-child(even) {
            background-color: #fff;
        }

        table {
            font-size: 14px;
        }

        #map {
            width: 100%;
            height: 400px;
        }
    </style>
</head>

<body>
    <div class="body-contents-wrapper">
        <?php include 'sidebar.php' ?>

        <div class="asideBarBacDrop"></div>

        <div class="contents">
            <?php include('php/includes/header.php'); ?>

            <div class="cont-container">
                <header class="header-content">
                    Home / <span>Dashboard </span>
                </header>
                <div class="cardBoxes row">
                    <div class="cardBox ">
                        <div class="rSide">
                            <h3>
                                <?= $total_devices ?>
                            </h3>
                            <p>Active devices</p>
                        </div>
                        <div class="lSide">
                            <i class="fa-solid fa-list"></i>
                        </div>
                    </div>
                    <div class="cardBox ">
                        <div class="rSide">
                            <h3><?= $total_inactive_devices ?></h3>
                            <p>Non active devices</p>
                        </div>
                        <div class="lSide">
                            <i class="fa-solid fa-tree"></i>
                        </div>
                    </div>
                </div>
                <div class="row mx-auto">
                    <?php
                    $getData = mysqli_query($con, "SELECT * FROM device");
                    if (mysqli_num_rows($getData) > 0) {
                        $did =1;
                        while ($row = mysqli_fetch_assoc($getData)) {
                            $uuid = $row['deviceUID'];  
                    ?>

                    <div class="col-lg-3 col-md-4 col-sm-5 text-center bg-light p-2 rounded shadow m-2">
                      <h3>Device <?= $did++?></h3>  
                      <p>
                          <a href="charts.php?action=get_data&id=<?= $uuid; ?>" class="btn btn-success">View Data</a>
                        </p>

                    </div> 
                    <?php
                                    }
                                } else {
                                    $msg[] = "No records found.";
                                }
                                ?>
                    <!-- <canvas id="paymentCountsChart" width="400" height="200"></canvas> -->
                    <!-- 
                     <div class="col-lg-5 bg-light p-2 rounded shadow m-2">
                        <canvas id="paymentCountsChart" width="400" height="200"></canvas>
                    </div>
                    <div class="col-lg-5 bg-light p-2 rounded shadow m-2">
                        <canvas id="paymentsChart" width="350" height="200"></canvas>
                    </div> -->
                </div>

                <?php include('php/includes/Rlinks.php'); ?>

                <?php include('php/includes/footer.php'); ?>
            </div>

        </div>
    </div>

    <script src="assets/js/main.js"></script>
    <script src="assets/js/searchTable.js"></script>
    <!-- <script src="assets/js/exportToExcel.js"></script> -->

    <!-- <script>
        window.onload = function() {
            calculateTotalSum();
        };

        function calculateTotalSum() {
            var totalSum = 0;
            var numBers = document.getElementsByClassName('numberUnknown');

            for (var i = 0; i < numBers.length; i++) {
                totalSum += parseFloat(numBers[i].innerText);
            }

            // console.log(totalSum);
            document.querySelector('.numberUnknownOutput').innerHTML = totalSum;
        }
    </script> -->

</body>

</html>