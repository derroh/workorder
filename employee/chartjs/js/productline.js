$(document).ready(function() {

	$.ajax({
		url: "./chart-php/data4.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var player = [];
			var score = [];
	
			for(var i in data) {
				player.push("Product model " + data[i].playerid);
				score.push(data[i].score);
			}
	
			var chartdata = {
				labels: player,
				datasets : [
					{
						label: "8F",
						fill: false,
						lineTension: 0.1,
						backgroundColor: "rgba(59, 89, 152, 0.75)",
						borderColor: "rgba(59, 89, 152, 1)",
						pointHoverBackgroundColor: "rgba(59, 89, 152, 1)",
						pointHoverBorderColor: "rgba(59, 89, 152, 1)",
						data: score
					},
					{
					  label: "1A",
					  fill: false,
					  lineTension: 0.1,
					  backgroundColor: "rgba(29, 202, 255, 0.75)",
					  borderColor: "rgba(29, 202, 255, 1)",
					  pointHoverBackgroundColor: "rgba(29, 202, 255, 1)",
					  pointHoverBorderColor: "rgba(29, 202, 255, 1)",
					  data: score
					}
				]
			};
	
			var ctx = $("#line-chartcanvas");
	
			var barGraph = new Chart(ctx, {
				type: 'line',
				data: chartdata
			});
		},
		error: function(data) {
			console.log(data);
		}
	});

});