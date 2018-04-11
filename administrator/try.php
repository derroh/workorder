
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<div>
<p style="color: black;"><b>Number Of People In Each Country</b></p>
    <div id="geo_chart_div" style="max-width: 650px; max-height: 600px;"></div>
</div>

	<script src="chartjs/jquery-2.1.4.min.js"></script>
		<script src="chartjs/Chart.js"></script>
		<script src="chartjs/js/jquery.min.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">

      // Load the Visualization API and the charts package.
      google.load('visualization', '1.0', {'packages':['geochart']});

      // Geochart
      google.setOnLoadCallback(drawRegionsMap);

      function drawRegionsMap() {



        $.ajax({
		url: "http://localhost:81/workorder/administrator/chart-php/data6.php",
		method: "GET",
		success: function(data) {
			console.log(data);
            
            var obj = JSON.parse(data);
            var datat = google.visualization.arrayToDataTable(obj);

            var options = {colorAxis: {colors: ['#FFFFFF', '#048ABF', '#025172', '#023E5A', '#013453']}};

            var chart = new google.visualization.GeoChart(document.getElementById('geo_chart_div'));
                chart.draw(datat, options);
                   
                   // };//
                },
                error: function(data) {
                    console.log(data);
                }
            });
        }

        // Make the charts responsive
      jQuery(document).ready(function(){
        jQuery(window).resize(function(){
          drawRegionsMap();
        });
    });
    </script>
</body>

</html>