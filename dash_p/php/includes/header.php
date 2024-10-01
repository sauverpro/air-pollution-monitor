<?php
include "php/config.php";

if (isset($_SESSION['log_uni_id'])) {
    $selectuser = mysqli_query($con, "SELECT * FROM `users` WHERE `UserID` = {$_SESSION['log_uni_id']}");
    $user = mysqli_fetch_assoc($selectuser);
    $unid = $user['UserID'];
    $fname = $user['UserName'];
    $names = $user['UserName'];

    ?>
    <div class="top-header-contents">
    <div class="left-top-header-contents sub-header-contentes">
        <i class="fa-solid fa-bars-staggered toggleAsidebar"></i>
        <span class="closeAside">
            <i class="fa-solid fa-bars"></i>
        </span>
    </div>
    <a href="index.php" class="companyTitle">
        RP- Air Pollution Monitor
    </a>
    <div class="right-top-header-contents sub-header-contentes">
        <a href="settings.php" style="text-decoration: none;">
            <i class="fa-solid fa-cog top-header-cog"></i>
        </a>
        <img src="php/defaultavatar/avatar.png" alt="profile">
        <p>
            <a href="settings.php" class="text-dark" style="text-decoration: none;">
                <span class="userTitle">
                    User,
                </span>
                <?= $names; ?></a>
        </p>
    </div>
</div>
    <?php
} else if (isset($_SESSION['id'])) {
    $cid = $_SESSION['id'];
    $selectclient = mysqli_query($con, "SELECT * FROM `clients` WHERE `clientUID` ='$cid'");
    $user = mysqli_fetch_assoc($selectclient);
    $unid = $user['clientUID'];
    $fname = $user['names'];
    $names = $user['names'];
    ?>
    <div class="top-header-contents">
    <div class="left-top-header-contents sub-header-contentes">
        <i class="fa-solid fa-bars-staggered toggleAsidebar"></i>
        <span class="closeAside">
            <i class="fa-solid fa-bars"></i>
        </span>
    </div>
    <a href="index.php" class="companyTitle">
        RP 
    </a>
    <div class="right-top-header-contents sub-header-contentes">
        <a href="settings.php" style="text-decoration: none;">
            <i class="fa-solid fa-cog top-header-cog"></i>
        </a>
        <img src="php/defaultavatar/avatar.png" alt="profile">
        <p>
            <a href="#" class="text-dark" style="text-decoration: none;">
                <span class="userTitle">
                    Client,
                </span>
                <?= $names; ?></a>
        </p>
    </div>
</div>
    <?php
} else {
    echo "<script>console.log(".$_SESSION['id'].") </script>";
    echo "<script>alert('You must login first. hello')</script>";
    echo "<script>window.location.href = '../index.php'</script>";
}
?>
