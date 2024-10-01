<?php
$url = $_SERVER['REQUEST_URI'];
?>

<div class="asideBar">
    <header class="asideHeader">
        <h3 class="text-success">RP COPORTE Ltd</h3>
        <!-- <img src="assets/images/logo.jpg" alt="logo"> -->
        <i class="fa-solid fa-times closeAsidebarBtn"></i>
    </header>

    <div class="sideLinks">
        <a href="index.php" class="<?= (strpos($url, 'index.php') ? 'active' : ''); ?>">
            <i class="fa-solid fa-house"></i>
            <span>Home</span>
        </a>  
        <a href="devices.php" class="<?= (strpos($url, 'devices.php') ? 'active' : ''); ?>">
            <i class="fa-solid fa-ticket"></i>
            <span>Devices</span>
        </a>
<!--   
        <a href="reports.php" class="<?= (strpos($url, 'reports.php') ? 'active' : ''); ?>">
            <i class="fa-solid fa-clipboard"></i>
            <span>Report</span>
        </a> -->

        <a href="manage_users.php" class="<?= (strpos($url, 'manage_users.php') ? 'active' : ''); ?>">
            <i class="fa-solid fa-users"></i>
            <span>Users</span>
        </a>
        <a href="#" class="linkDropDown" class="<?= (strpos($url, 'myData') ? 'active' : ''); ?>">
            <i class="fa-solid fa-cog"></i>
            <span>Settings</span>
        </a>
        <div class="dropedLinks">
            <a href="settings.php" class="<?= (strpos($url, 'settings.php') ? 'active' : ''); ?>">
                <i class="fa-solid fa-user"></i>
                <span>Profile</span>
            </a>
            <a href="settings_password.php" class="<?= (strpos($url, 'settings_password.php') ? 'active' : ''); ?>">
                <i class="fa-solid fa-key"></i>
                <span>Change Password</span>
            </a>
            <a href="php/extras/logout.php">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span>Log Out</span>
            </a>
        </div>
        <a href="php/extras/logout.php">
            <i class="fa-solid fa-right-from-bracket"></i>
            <span>Log Out</span>
        </a>
    </div>
</div>