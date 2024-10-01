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
    <link rel="icon" href="assets/images/logo.jpg">
    <link rel="stylesheet" href="assets/css/main.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"> </script>

    <title>RP - System</title>
</head>

<body>
    <div class="body-contents-wrapper">
        <?php include 'sidebar.php' ?>

        <div class="asideBarBacDrop"></div>

        <div class="contents">
            <?php include('php/includes/header.php'); ?>

            <div class="cont-container">
                <div class="row mx-auto">
                    <!-- Starting charts -->
                    <div class="col-md-10 mt-5 mx-auto shadow rounded">
                        <h5 class="text-dark text-center fs-3"> ALL TRENDS</h5>
                        <canvas id="combinedChart" class="h-75 bg-light rounded shadow"></canvas>
                    </div>
                    <div class="col-md-5 col-sm-12 col-lg-6 mt-5 shadow rounded">
                        <h5 class="text-dark text-center fs-3">PM2.5 Chart</h5>
                        <canvas id="pm25Chart" class="bg-light rounded shadow m-2"></canvas>
                    </div>
                    <div class="col-md-5 col-sm-12 col-lg-6 mt-5 shadow rounded">
                        <h5 class="text-dark text-center fs-3">PM10 Chart</h5>
                        <canvas id="pm10Chart" class="bg-light rounded shadow m-2"></canvas>
                    </div>
                    <div class="col-md-5 col-sm-12 col-lg-6 mt-5 shadow rounded">
                        <h5 class="text-dark text-center fs-3">CO2 Chart</h5>
                        <canvas id="co2Chart" class="bg-light rounded shadow m-2"></canvas>
                    </div>
                    <div class="col-md-5 col-sm-12 col-lg-6 mt-5 shadow rounded">
                        <h5 class="text-dark text-center fs-3">CO Chart</h5>
                        <canvas id="coChart" class="bg-light rounded shadow m-2"></canvas>
                    </div>
                    <div class="col-md-5 col-sm-12 col-lg-6 mt-5 shadow rounded">
                        <h5 class="text-dark text-center fs-3">SO2 Chart</h5>
                        <canvas id="so2Chart" class="bg-light rounded shadow m-2"></canvas>
                    </div>
                    <div class="col-md-5 col-sm-12 col-lg-6 mt-5 shadow rounded">
                        <h5 class="text-dark text-center fs-3">NO2 Chart</h5>
                        <canvas id="no2Chart" class="bg-light rounded shadow m-2"></canvas>
                    </div>
                </div>
                <!-- end of chart -->
                <?php

                include('php/includes/Rlinks.php'); ?>
                <?php include('php/includes/footer.php'); ?>
            </div>
        </div>
    </div>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/optCheckbox.js"></script>
    <script src="extensions/Jquery/jquery.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="extensions/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.2/jquery.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Function to get the 'id' parameter from the URL
        function getIdFromUrl() {
            const params = new URLSearchParams(window.location.search);
            return params.get('id');
        }

        // Function to fetch data from the server
        function fetchData() {
            const id = getIdFromUrl(); // Get the ID from the URL
            console.log(id);

            // Make sure ID is available before making the fetch request
            if (id) {
                fetch(`./php/getData.php?action=get_data&id=${id}`)
                    .then(response => response.json())
                    .then(data => {
                        destroyCharts(); // Destroy existing charts before creating new ones
                        updateCombinedChart(data);
                        updateIndividualCharts(data);
                    })
                    .catch(error => console.error('Error fetching data:', error));
            } else {
                console.error('ID not found in URL');
            }
        }

        // Function to destroy existing charts
        function destroyCharts() {
            ['combinedChart', 'pm25Chart', 'pm10Chart', 'co2Chart', 'coChart', 'so2Chart', 'no2Chart'].forEach(chartId => {
                const existingChart = Chart.getChart(chartId);
                if (existingChart) {
                    existingChart.destroy();
                }
            });
        }

        // Function to update the combined sensor data chart
        function updateCombinedChart(data) {
            // Extract the required data for the combined chart
            const timestamps = data.map(entry => entry.date_time);
            const pm25 = data.map(entry => entry["PM2.5"]);
            const pm10 = data.map(entry => entry["PM10"]);
            const co2 = data.map(entry => entry["CO2"]);
            const co = data.map(entry => entry["CO"]);
            const so2 = data.map(entry => entry["SO2"]);
            const no2 = data.map(entry => entry["NO2"]);

            // Create the combined chart
            const combinedChartCtx = document.getElementById('combinedChart').getContext('2d');
            new Chart(combinedChartCtx, {
                type: 'line',
                data: {
                    labels: timestamps,
                    datasets: [{
                            label: 'PM2.5',
                            data: pm25,
                            borderColor: 'red'
                        },
                        {
                            label: 'PM10',
                            data: pm10,
                            borderColor: 'green'
                        },
                        {
                            label: 'CO2',
                            data: co2,
                            borderColor: 'blue'
                        },
                        {
                            label: 'CO',
                            data: co,
                            borderColor: 'orange'
                        },
                        {
                            label: 'SO2',
                            data: so2,
                            borderColor: 'purple'
                        },
                        {
                            label: 'NO2',
                            data: no2,
                            borderColor: 'brown'
                        }
                    ]
                }
            });
        }

        // Function to update individual sensor data charts
        function updateIndividualCharts(data) {
            const timestamps = data.map(entry => entry.date_time);
            createChart('pm25Chart', 'PM2.5', timestamps, data.map(entry => entry["PM2.5"]), 'red');
            createChart('pm10Chart', 'PM10', timestamps, data.map(entry => entry["PM10"]), 'green');
            createChart('co2Chart', 'CO2', timestamps, data.map(entry => entry["CO2"]), 'blue');
            createChart('coChart', 'CO', timestamps, data.map(entry => entry["CO"]), 'orange');
            createChart('so2Chart', 'SO2', timestamps, data.map(entry => entry["SO2"]), 'purple');
            createChart('no2Chart', 'NO2', timestamps, data.map(entry => entry["NO2"]), 'brown');
        }

        // Helper function to create individual charts
        function createChart(canvasId, label, labels, data, borderColor) {
            const chartCtx = document.getElementById(canvasId).getContext('2d');
            new Chart(chartCtx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [{
                        label: label,
                        data: data,
                        borderColor: borderColor,
                        backgroundColor: '#9BD0F5',
                    }]
                }
            });
        }

        // Fetch data initially and set up interval for periodic updates
        fetchData();
        setInterval(fetchData, 30000); // Update every 30 seconds
    </script>
</body>

</html>