<?php
include "php/includes/pure_header.php";


if (isset($_POST['updatetest'])) {
    $test_id = mysqli_real_escape_string($con, $_POST['test_id']);
    $person_name = mysqli_real_escape_string($con, $_POST['person_name']);
    $text = mysqli_real_escape_string($con, $_POST['text']);
    $location = mysqli_real_escape_string($con, $_POST['location']);
    $u_date = mysqli_real_escape_string($con, $_POST['u_date']);

    $update = mysqli_query($con, "UPDATE `testimonial` SET `PersonName`='$person_name',
                `Location`='$location',`Text_D`='$text',`U_Date`='$u_date' WHERE `Id`='$test_id'");
    if ($update) {
        header("Location: view_testimonials.php?msg=($person_name) Testimonial details has been Changed successfully!");
    } else {
        header('Location: view_testimonials.php?msg=Sorry! Something went wrong in changing testimonial details.' . mysqli_error($con));
    }

    if (isset($_FILES['image'])) {
        $file_name = $_FILES['image']['name'];
        $tmp_name = $_FILES['image']['tmp_name'];

        $img_explode = explode('.', $file_name);
        $img_extension = strtolower(end($img_explode));

        $extensions = ['png', 'jpeg', 'jpg', 'gif'];

        if (in_array($img_extension, $extensions) === true) {
            $time = time();
            $new_file_name = $time . '_testimonial_' . $file_name;

            if (move_uploaded_file($tmp_name, 'php/uploaded_images/' . $new_file_name)) {
                $update_user_info = mysqli_query($con, "UPDATE `testimonial` SET `PersonName`='$person_name',
                `Location`='$location',`Text_D`='$text',`Image`='$new_file_name',`U_Date`='$u_date' WHERE `Id`='$test_id'");
            } else {
                header('Location: view_testimonials.php?msg=Sorry! Something went wrong in changing testimonial details.' . mysqli_error($con));
            }
        }
    }
}


$test_id = $_GET['test'];
$get_test = mysqli_query($con, "SELECT * FROM `testimonial` WHERE `Id` = '$test_id'");
$row_get_test = mysqli_fetch_assoc($get_test);


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
    <title>RP  - System</title>
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
                            <h4><i class="fa-solid fa-ticket"></i> Testimonial Details</h4>
                        </div>
                        <div class="rigthPosition">
                            <a href="view_testimonials.php" class="btn btn-success btn-sm">
                                <i class="fa-solid fa-table"></i>
                            </a>
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

                    <form action="up_test.php" method="post" enctype="multipart/form-data">
                        <div class="header-form-represent">
                            <p class="itsSpan">- Testimonial Details -</p>
                        </div>
                        <input type="hidden" name="test_id" value="<?= $row_get_test['Id']; ?>">
                        <div class="row mb-2">
                            <div class="col-md-6">
                                <div class="field">
                                    <label>PersonNames:</label>
                                    <input type="text" name="person_name" value="<?= $row_get_test['PersonName']; ?>" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Attach an image:</label>
                                    <input type="file" name="image" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Text:</label>
                                    <textarea name="text" class="form-control" required><?= $row_get_test['Text_D']; ?></textarea>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Location:</label>
                                    <input type="text" name="location" class="form-control" value="<?= $row_get_test['Location']; ?>" required>
                                </div>
                            </div>
                        </div>
                        <div class="field">
                            <label>Date:</label>
                            <input type="date" name="u_date" value="<?= $row_get_test['U_Date']; ?>" class="form-control" required>
                        </div>

                        <button type="submit" class="btn btn-outline-success formSubmitBtn" name="updatetest">Change</button>
                    </form>
                </div>

                <?php include('php/includes/Rlinks.php'); ?>
                <?php include('php/includes/footer.php'); ?>
            </div>

        </div>
    </div>

    <script src="assets/js/main.js"></script>
    <script src="assets/js/optCheckbox.js"></script>
    <script src="extensions/Jquery/jquery.js"></script>

    <script>
        const companyAssign = document.querySelector('.companyAssign');
        const attachToCompany = document.querySelector('.attachToCompany');

        attachToCompany.onclick = () => {
            companyAssign.classList.toggle('active');
            if (attachToCompany.classList.contains('fa-industry')) {
                attachToCompany.classList.replace('fa-industry', 'fa-times');
            } else {
                attachToCompany.classList.replace('fa-times', 'fa-industry');
            }
        }
    </script>

</body>

</html>