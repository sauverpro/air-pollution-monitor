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
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"> </script>

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
                            <h4><i class="fa-solid fa-users"></i> Add New Client</h4>
                        </div>
                        <div class="rightPosition">
                            <a href="clients.php" class="btn btn-primary btn-sm">
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
                    <form method="post" id="saveForm" enctype="multipart/form-data">
                        <div class="header-form-represent">
                            <p class="itsSpan">- Client Details -</p>
                        </div>
                        <div ><a href="php/assignDevice.php" class="btn btn-primary" id="get">Request Device Id</a> </div>
                        <div class="row mb-2">
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Client Names</label>
                                    <input type="text" name="c_name" placeholder="client names..." class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Client national ID</label>
                                    <input type="text" name="nid" placeholder="Client NID..." class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <label>Client Phone:</label>
                                    <input type="text" name="c_phone" placeholder="Client phonenumber..." class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="header-form-represent">
                            <p class="itsSpan">- Client Address -</p>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-6">

                                <div class="field">
                                    <select name="prov" class="form-control mb-2" id="provinces">
                                        <option value="" disabled selected> Select Province</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <select name="distr" class="form-control mb-2" id="district">
                                        <option value="" disabled selected> Select District</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <select name="sectors" class="form-control mb-2" id="sector">
                                        <option value="" disabled selected> Select Sector</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <select name="cells" class="form-control mb-2" id="cells">
                                        <option value="" disabled selected> Select Cell</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <select name="villages" class="form-control mb-2" id="villages">
                                        <option value="" disabled selected> Select Village</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <input type="text" name="hafi_ya" class="form-control" placeholder="Near by..(Hafi ya)" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <input type="text" name="longitude" placeholder="Longitude" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <input type="text" name="latitude" placeholder="latitude" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="header-form-represent">
                            <p class="itsSpan">- System Details -</p>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-6">

                                <div class="field">
                                    <input type="text" name="sim" class="form-control" placeholder="Sim Number" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <select name="device" class="form-control mb-2" id="device">
                                        <option value="" disabled selected>Select Device ID</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <select name="systemType" class="form-control mb-2" id="systemType">
                                        <option value="With Battery">With Battery</option>
                                        <option value="Without Battery">Without Battery</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <input type="number" class="form-control" min="1" id="sensors" required max="6" name="sensors" placeholder="Enter Number Of Sensors">
                                    <p class="resp"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <input type="number" disabled id="month" class="form-control" required value="0" name="month" placeholder="Amount">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <input type="number" class="form-control" disabled id="amount" value="0" name="amounts" placeholder="Amount To BE payed">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="field">
                                    <input type="number" class="form-control" disabled id="subscription" value="0" name="subscription" placeholder="Subscription Fee">
                                    <p onclick="editAmount()">edit</p>
                                </div>
                            </div>
                        </div>

                        <p class="message"></p>
                </div>
                <button type="submit" id="valid" class="btn btn-outline-primary">Register Client</button>
                </form>
            </div>
            <?php include('php/includes/Rlinks.php'); ?>
            <?php include('php/includes/footer.php'); ?>
        </div>

    </div>
    </div>
    <script src="js/addressHandle.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <!-- <script src="assets/js/optCheckbox.js"></script> -->
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

    <script>
        $(document).ready(function() {
            $.ajax({
                method: "GET",
                url: "php/processDevice.php",
                beforeSend: () => {
                    $('.msg').html('<i class="fa-solid fa-spinner fa-spin"></i> Getting Device ID');
                },
                success: function(response) {
                    console.log(response);
                    $('.msg').html('');
                    $("#device").html(response);
                }
            });
        });
        $()
    </script>
    <script>
        const form = document.querySelector('#saveForm');

        $('#sensors').keyup(function(e) {
            e.preventDefault();
            var valu = $('#sensors').val();
            var type = $('#systemType').val();
            if (type == 'Without Battery') {
                // calculating
                var sensorsActivate = 0;
                var subscription = 0;
                var monthly = 0;
                if (valu == 0) {
                    $('.resp').css('color', 'red');
                    $('.resp').html("Sensors must be between 1-6");
                }
                if (valu == 1) {
                    $('.resp').html('');
                    sensorsActivate = 330800;
                    subscription = 50000
                    percent_value = (330800 - 50000) / 42;
                    tot = (percent_value * 42) + 50000;
                    monthly = Math.round(percent_value);

                } else if (valu == 2) {
                    $('.resp').html('');
                    sensorsActivate = 439800;
                    subscription = 60000
                    percent_value = (439800 - 60000) / 42;
                    tot = (percent_value * 42) + 60000;
                    monthly = Math.round(percent_value);
                } else if (valu == 3) {
                    $('.resp').html('');
                    sensorsActivate = 548800;
                    subscription = 70000
                    percent_value = (548800 - 70000) / 42;
                    tot = (percent_value * 42) + 70000;
                    monthly = Math.round(percent_value);
                } else if (valu == 4) {
                    $('.resp').html('');
                    sensorsActivate = 657800;
                    subscription = 80000
                    percent_value = (657800 - 80000) / 42;
                    tot = (percent_value * 42) + 80000;
                    monthly = Math.round(percent_value);
                } else if (valu == 5) {
                    $('.resp').html('');
                    sensorsActivate = 766800;
                    subscription = 90000
                    percent_value = (766800 - 90000) / 42;
                    tot = (percent_value * 42) + 90000;
                    monthly = Math.round(percent_value);
                } else if (valu == 6) {
                    $('.resp').html('');
                    sensorsActivate = 875800;
                    subscription = 100000
                    percent_value = (875800 - 100000) / 42;
                    tot = (percent_value * 42) + 100000;
                    monthly = Math.round(percent_value);
                }
                $('#amount').val(sensorsActivate);
                $('#month').val(monthly);
                $('#subscription').val(subscription);
                console.log(`amount= ${sensorsActivate}`);
                console.log("subscription", subscription);
                console.log(monthly);
            } else {
                var amount = 0;
                var month = 0;
                if (valu == 0) {
                    $('.resp').css('color', 'red');
                    $('.resp').html("Sensors must be between 1-6");
                }
                if (valu == 1) {
                    $('.resp').html('');
                    amount = 392800;
                    subscription = 50000
                    percent_value = (392800 - 50000) / 42;
                    tot = (percent_value * 42) + 50000;
                    monthly = Math.round(percent_value);
                } else if (valu == 2) {
                    $('.resp').html('');
                    amount = 501800;
                    subscription = 60000
                    percent_value = (501800 - 60000) / 42;
                    tot = (percent_value * 42) + 60000;
                    monthly = Math.round(percent_value);
                } else if (valu == 3) {
                    $('.resp').html('');
                    amount = 610800;
                    subscription = 70000
                    percent_value = (610800 - 70000) / 42;
                    tot = (percent_value * 42) + 70000;
                    monthly = Math.round(percent_value);
                } else if (valu == 4) {
                    $('.resp').html('');
                    amount = 719800;
                    subscription = 80000
                    percent_value = (719800 - 80000) / 42;
                    tot = (percent_value * 42) + 80000;
                    monthly = Math.round(percent_value);
                } else if (valu == 5) {
                    $('.resp').html('');
                    amount = 828800;
                    subscription = 90000
                    percent_value = (828800 - 90000) / 42;
                    tot = (percent_value * 42) + 90000;
                    monthly = Math.round(percent_value);
                } else if (valu == 6) {
                    $('.resp').html('');
                    amount = 937800;
                    subscription = 100000
                    percent_value = (937800 - 100000) / 42;
                    tot = (percent_value * 42) + 100000;
                    monthly = Math.round(percent_value);
                }
                $('#amount').val(amount);
                $('#month').val(monthly);
                $('#subscription').val(subscription);
                console.log(`amount= ${amount}`);
                console.log("subscription", subscription);
                console.log(monthly);
            }

        });

        function editAmount() {
            // e.preventDefault();
            alert("Do you Want To Add Total Amount Manually??");
            let amount = document.getElementById('amount').removeAttribute('disabled', false);

            $('#amount').keyup(function(e) {
                e.preventDefault();
                var sensors = $('#sensors').val();
                var type = $('#systemType').val();
                let getTotal = $('#amount').val();
                if (type == 'Without Battery') {
                    // var sensorsActivate = 0;
                    var percent_value = 0;
                    var sensorsActivate = 0;
                    var sensorsActivate = 0;
                    var monthly = 0;
                    if (sensors == 0) {
                        $('.resp').css('color', 'red');
                        $('.resp').html("Sensors must be between 1-6");
                    }
                    if (sensors == 1) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 50000;
                        percent_value = (getTotal - 50000) / 42;
                        tot = (percent_value * 42) + 50000;
                        monthly = Math.round(percent_value);

                    } else if (sensors == 2) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 60000;
                        percent_value = (getTotal - 60000) / 42;
                        tot = (percent_value * 42) + 60000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 3) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 70000;
                        percent_value = (getTotal - 70000) / 42;
                        tot = (percent_value * 42) + 70000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 4) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 80000;
                        percent_value = (getTotal - 80000) / 42;
                        tot = (percent_value * 42) + 80000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 5) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 90000;
                        percent_value = (getTotal - 90000) / 42;
                        tot = (percent_value * 42) + 90000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 6) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 100000;
                        percent_value = (getTotal - 100000) / 42;
                        tot = (percent_value * 42) + 100000;
                        monthly = Math.round(percent_value);
                    }
                    // $('#amount').val(percent_value);
                    $('#month').val(monthly);
                    console.log(`amount= ${tot}`);
                    console.log(monthly);
                } else {
                    var percent_value = 0;
                    var sensorsActivate = 0;
                    var sensorsActivate = 0;
                    var monthly = 0;
                    if (sensors == 0) {
                        $('.resp').css('color', 'red');
                        $('.resp').html("Sensors must be between 1-6");
                    }
                    if (sensors == 1) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 50000;
                        percent_value = (getTotal - 50000) / 42;
                        tot = (percent_value * 42) + 50000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 2) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 60000;
                        percent_value = (getTotal - 60000) / 42;
                        tot = (percent_value * 42) + 60000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 3) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 70000;
                        percent_value = (getTotal - 70000) / 42;
                        tot = (percent_value * 42) + 70000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 4) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 80000;
                        percent_value = (getTotal - 80000) / 42;
                        tot = (percent_value * 42) + 80000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 5) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 90000;
                        percent_value = (getTotal - 90000) / 42;
                        tot = (percent_value * 42) + 90000;
                        monthly = Math.round(percent_value);
                    } else if (sensors == 6) {
                        $('.resp').html('');
                        // sensorsActivate = getTotal - 100000;
                        percent_value = (getTotal - 100000) / 42;
                        tot = (percent_value * 42) + 100000;
                        monthly = Math.round(percent_value);
                    }
                    // $('#amount').val(percent_value);
                    $('#month').val(monthly);
                    console.log(`amount= ${tot}`);
                    console.log(monthly);
                }

            })
            // console.log(getTotal);
        }
        $(document).ready(function() {
            form.addEventListener('submit', e => {
                e.preventDefault();
                const c_name = form.c_name.value;
                const nid = form.nid.value;
                const c_phone = form.c_phone.value;
                const prov = form.prov.value;
                const distr = form.distr.value;
                const sectors = form.sectors.value;
                const cells = form.cells.value;
                const villages = form.villages.value;
                const hafi_ya = form.hafi_ya.value;
                const longitude = form.longitude.value;
                const latitude = form.latitude.value;
                const sim = form.sim.value;
                const systemType = form.systemType.value;
                const sensors = form.sensors.value;
                const amount = form.amounts.value;
                const device = form.device.value;
                const month = form.month.value;
                const subscription = form.subscription.value;
                $.ajax({
                    method: "POST",
                    url: "php/addClient.php",
                    data: {
                        c_name,
                        nid,
                        c_phone,
                        prov,
                        distr,
                        sectors,
                        cells,
                        villages,
                        hafi_ya,
                        longitude,
                        latitude,
                        sim,
                        systemType,
                        sensors,
                        device,
                        amount,
                        month,
                        subscription
                    },
                    beforeSend: () => {
                        $('.message').html("Adding client..");
                        $('#valid').attr('disabled', 'true');
                    },
                    success: function(response) {
                        $('.message').html(response);
                    }
                });
            })
        });
    </script>
</body>

</html>