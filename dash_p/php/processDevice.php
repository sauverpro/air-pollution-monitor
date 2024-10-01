<?php 
   include "includes/pure_header_in_php.php";
    $sel = $con->query("SELECT * FROM device WHERE isActive = 3");
    if ($sel->num_rows > 0) {
        while ($row = $sel->fetch_assoc()) {
            $device = $row['deviceId'];
            $uuid = $row['deviceUID'];
            ?>
            <option value="<?=$uuid;?>"> <?=$uuid;?></option>
            <?php 
        }
    } else {
        echo '<option> No device found</option>';
    }
?>