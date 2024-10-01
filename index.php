<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="default/extensions/fontawesome/css/all.css">
    <link rel="icon" href="default/assets/images/pngwing.com.png">
    <link rel="stylesheet" href="default/assets/css/login.css">
    <!-- <link rel="stylesheet" href="assets/css/main.css"> -->

    <title>RP - System</title>
</head>

<body>

    <div class="inner-container">
        <div class="header-contents">
        <div class="leftSide">
                <p>RP COPORTE Ltd</p>
            </div>
            <div class="rightSide">
                <div class="coverIcon" onclick="window.location.reload()">
                    <i class="fa-solid fa-refresh"></i>
                </div>
            </div>
        </div>


        <form action="#" class="form">
            <div class="form-header">
                <p class="loginText"> RP-Air Pollution Monitor </p><br>
                <i class="fa-solid fa-user representIcon"></i>
                <p class="loginText">LogIn</p>
            </div>


            <div class="concatenateContainers">
                <div class="success-msg" style="text-align: center; padding: 5px 0; font-weight: 500; color: #07c207;"></div>
                <div class="inner-cont">
                    <div class="text-inputs">
                        <div class="field">
                            <input type="text" name="uname_phone" id="phoneoremail" class="inp" placeholder="Phone/Username" value="<?php if (isset($_COOKIE['PhoneNumber/Email'])) {
                                                                                                                                    } ?>">
                            <i class="fa-regular fa-user inputIcon"></i>
                        </div>
                        <div class="field">
                            <input type="password" name="password" id="password" class="inp" placeholder="Password" value="<?php if (isset($_COOKIE['Password'])) {
                                                                                                                                echo "********";
                                                                                                                            } ?>">
                            <i class="fa-solid fa-key inputIcon"></i>
                            <i class="fa-solid fa-eye viewPassword"></i>
                        </div>
                        <div>
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" <?php if (isset($_COOKIE['PhoneNumber/Email'])) {
                                                                                ?> checked <?php
                                                                                        } ?> name="rememberme"> <span style="color: #444;">Remember me</span>
                            </label>
                        </div>
                    </div>

                </div>

                <div class="error-msg" style=" text-align: center; padding: 5px 0; font-weight: 500; color: #ca2204;"></div>
                <div class="button-container">
                    <button type="submit" class="loginBtn">LOGIN</button> 
                </div>
            </div>

 
        </form>
    </div>

    <script src="default/javascript/login.js"></script>
    <script src="default/javascript/password-hide-show.js"></script>
    <script>
        // const msg = document.querySelector('.msg');
        // const closeModalBtn = document.querySelector('.closeModalBtn');

        // closeModalBtn.onclick = () => {
        //     msg.style.display = 'none';
        //     msg.classList.toggle('showMsg');
        // }


        function forgotPassword() {
            alert('For more help, You can see support on this number:\n +(250) 792 054 846')
        }

        const planeClicked = document.querySelector('.top-plane-container');
        const body = document.querySelector('body');
        body.onclick = () => {
            body.classList.toggle('bodyCalled');
        }
    </script>
</body>

</html>