<?php
include "includes/pure_header_in_php.php";

$test_id = $_GET['test'];
$delete_record = mysqli_query($con, "DELETE FROM `testimonial` WHERE `Id` = '$test_id'");

if ($delete_record) {
    echo "<script>window.location.href = '../view_testimonials.php?msg=Record deleted successfully in the system!'</script>";
} else {
    echo "<script>window.location.href = '../view_testimonials.php?msg=Sorry, something went wrong in deleting record in the system!'</script>";
}
