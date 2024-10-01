<?php
date_default_timezone_set('Africa/Cairo');
header('Content-Type: application/json');
include 'default/php/config.php';
if (isset($_GET['deviceId'])) {
    $deviceId = $_GET['deviceId'];
    $PM2_5 = $_GET['PM2_5'];
    $PM10 = $_GET['PM10']; 
    $CO2 = $_GET['CO2'];
    $CO = $_GET['CO'];
    $SO2 = $_GET['SO2'];
    $NO2 = $_GET['NO2']; 
    $date = date('d-m-Y h:i');
    $send =$con->query("INSERT INTO `sensors`(`deviceUID`, `PM2.5`, `PM10`, `CO2`, `CO`, `SO2`, `NO2`, `date_time`) 
    VALUES('$deviceId','$PM2_5','$PM10','$CO2','$CO','$SO2','$NO2','$date')"); 
    // http://localhost/air-pollution-monitor/sendData?deviceId=66ba588c3bffd&PM2_5=12&PM10=23&CO2=34&CO=45&SO2=43&NO2=32
    if($send) {
        $response = array("message" => "Data sent");
    } else {
        $response = array("message" => "Something went wrong");
    }
    $res = array(
        'status' => 200,
        'message' => $response["message"]
    );
    echo json_encode($res);
}
else{
    $res = array(
        'status' => 400,
        'error' => "Provide device of the data",
        'message' => "Something went wrong"
    );
    echo json_encode($res);
}