<?php 
include "includes/pure_header_in_php.php";
date_default_timezone_set('Africa/Cairo');
$labels = array();
$bpm = array();
$spo2 = array();
$bp = array();
$co2 = array();
$light = array();
$sound = array();
$all= array(); 
$select = $db->query("SELECT * FROM `data` WHERE `deviceId` = '$deviceId'");
if ($select->num_rows > 0) {
    while ($se = $select->fetch_assoc()) {
        $one = $se['temp'];
        $two = $se['humidity'];
        $three = $se['weight'];
        $four = $se['co2'];
        $five = $se['light'];
        $six = $se['sound'];
        $lb = $se['date_time'];
        $ds = substr($lb, 0, 2) . '/ ' . substr($lb, 10, 11);
        array_push($labels, $ds);
        array_push($bpm, $one);
        array_push($spo2, $two);
        array_push($bp, $three);
        array_push($co2, $four);
        array_push($light, $five);
        array_push($sound, $six);
       array_push($all, $se);
    }
    $response = array(
        'status' => 200,
        'labels' => $labels,
        'bpm' => $bpm,
        'spo2' => $spo2,
        'bp' => $bp,
        'co2' => $co2,
        'light' => $light,
        'sound' => $sound,
        'data' => $all,
        
    );
    echo json_encode($response);
} else {
    echo '{
            "message": "no data"
        }';
}
