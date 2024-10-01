<?php
// session_start();
include "includes/pure_header_in_php.php";
date_default_timezone_set('Africa/cairo');
function validateInput($dt)
{
    $data = trim($dt);
    $data = htmlspecialchars($dt);
    $data = stripslashes($dt);
    return $data;
}
if (isset($_POST['update'])) {
    $client_id = validateInput($_POST['client_id']);
    $name = validateInput($_POST['c_name']);
    $nid = validateInput($_POST['nid']);
    $phone = validateInput($_POST['c_phone']);
    $hafi_ya = validateInput($_POST['hafi_ya']);
    $longitude = validateInput($_POST['longitude']);
    $latitude = validateInput($_POST['latitude']);
    $narad_sm = validateInput($_POST['nrd_sm']);
    // address
    $prov = validateInput($_POST['prov']);
    $distr = validateInput($_POST['distr']);
    $sectors = validateInput($_POST['sectors']);
    $cells = validateInput($_POST['cells']);
    $villages = validateInput($_POST['villages']);
    $ins_date = date('d-m-Y h:i:s A');
    $today = date('d-m-Y h:i:s A');
    $dt = new DateTime($today);
    $nextPay = $dt->modify('+30 days');
    $js = json_encode($nextPay);
    $next = json_decode($js)->date;
    $next = substr($next, 0, 19);
    $address = array(
        'Province' => $prov,
        'District' => $distr,
        'Sector' => $sectors,
        'Cell' => $cells,
        'Village' => $villages
    );
    $address = json_encode($address);
    // dates
    // system 

    $systemType = validateInput($_POST['systemType']);
    $sensors = validateInput($_POST['sensors']);
    $month = $_POST['month'];
    $amounts = $_POST['amounts'];
    $subscription = $_POST['subscription'];
    $pending = $amounts - $subscription;
    // end of system
    $all = " UPDATE `clients` 
    SET `names`='$name',`NID`='$nid', `phone`='$phone', `address`='$address',`hafi_ya`= '$hafi_ya',
        `longitudde`='$longitude',`latitude`='$latitude', `sim_number` = '$narad_sm', `system_type` = '$systemType',`installation_date` = '$ins_date',payment_date = '$next', N_sensors= '$sensors', monthly_payment = '$month', amount = '$amounts', pending_amount = '$pending'
    WHERE `clientUID`= '$client_id' ";
    // echo "update query = " . $all . "<br>";
    $saveDevice = $con->query($all);
    if ($saveDevice) {
        $update = "UPDATE `payment` 
                    SET `amountPaid`='$subscription',`pend_money`='$pending',`naradaAmount`='$subscription',`recentPay`='$ins_date',`nextPay`='$next'
                    WHERE `client_id`='$client_id' AND `funds`='subscription'";
        // echo "payment query = " . $update . "<br>";
        $savePayment = $con->query($update);
        if ($savePayment) {
            // echo "Update Successfully";
            $message =  $name . " with " . $sensors . " Update Successfully";
            echo '<meta http-equiv="refresh" content="1; url=../singleClient.php?CID=' . $client_id . '&msg=' . $message . '">';
            // echo '<meta http-equiv="refresh" content="3; url=./clients.php?msg='.$message.'">'; 
        } else {
            $messages= "Saving subscription failed";
            echo '<meta http-equiv="refresh" content="1; url=../clients.php?msg='.$messages.'">';
        }
    } else {
        $messages= "Failed to Update Client";
        echo '<meta http-equiv="refresh" content="1; url=../clients.php?msg='.$messages.'">';
    }
}else{
    echo "not validated";
}
