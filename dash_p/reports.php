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
    <link rel="icon" href="assets/images/logo.png">
    <link rel="stylesheet" href="assets/css/main.css">
 
    <title>RP - System</title>
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
                                <h4><i class="fa-solid fa-clipboard"></i> Manage Testimonials</h4>
                                <small class="text-muted">All records are listed below.</small>
                            </div>
                        </div>
                        <div class="right-table-content">
                            <!-- <a href="addticket.php" class="btn btn-primary btn-sm rigthPosition">+</a> -->
                            <a href="new_test.php" class="btn btn-success btn-sm rigthPosition"><b>
                                    <ifa class="fa-solid fa-plus"></ifa> ADD NEW
                                </b></a>
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
                        <table class="table table-hover pureTable data-table table nowrap" id="myTable">
                            <thead class="bg-dark text-light">
                                <th>#</th>
                                <th>Image</th>
                                <th>Names</th>
                                <th>Location</th>
                                <th>Text</th>
                                <th>Date</th>
                                <th>Action</th>
                            </thead>
                            <tbody>
                                <?php
                                $count = 1;
                                $getData = mysqli_query($con, "SELECT * FROM `testimonial`");
                                if (mysqli_num_rows($getData) > 0) {
                                    while ($row = mysqli_fetch_assoc($getData)) {
                                ?>
                                        <tr>
                                            <td><?= $count++; ?></td>
                                            <td>
                                                <div class="name-avatar d-flex align-items-center">
                                                    <div class="avatar mr-2 flex-shrink-0">
                                                        <?php
                                                        $url_img = 'php/uploaded_images/' . $row['Image'] . '';
                                                        if ($row['Image'] == 'no_img') {
                                                        ?>
                                                            <img src="php/defaultavatar/avatar.png" class="border-radius-100 shadow" width="40" height="40" alt="" />
                                                        <?php
                                                        } elseif (!file_exists($url_img)) {
                                                        ?>
                                                            <img src="php/defaultavatar/avatar.png" class="border-radius-100 shadow" width="40" height="40" alt="" />
                                                        <?php
                                                        } else {
                                                        ?>
                                                            <a href="<?= $url_img; ?>" target="_blank">
                                                                <img src="<?= $url_img; ?>" class="shadow" width="40" height="40" alt="" />
                                                            </a>
                                                        <?php
                                                        }
                                                        ?>
                                                    </div>
                                                    <div class="txt">
                                                        <div class="weight-500">
                                                            Story
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td><?= $row['PersonName']; ?></td>
                                            <td><?= $row['Location']; ?></td>
                                            <td><?= $row['Text_D']; ?></td>
                                            <td><?= $row['U_Date']; ?></td>
                                            <td>
                                                <a href="up_test.php?test=<?= $row['Id']; ?>" class="btn btn-success btn-sm mr-1"><i class="fa-solid fa-pen-to-square"></i></a>
                                                <a href="php/delete_test.php?test=<?= $row['Id']; ?>" class="btn btn-outline-danger btn-sm mr-1" onclick="return confirm('Are you sure to delete this record in the system.')"><i class="fa-solid fa-trash"></i></a>
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