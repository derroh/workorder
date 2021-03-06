$(document).ready(function() {

	$.ajax({
		url: "./chart-php/data.php",
        method: "GET",
        success: function(data) {
            console.log(data);
            var player = [];
            var score = [];

            for(var i in data) {
                player.push("Model " + data[i].playerid);
                score.push(data[i].score);
            }
 
			var chartdata = {
				labels: player,
				datasets: [
					{
						label: "Fail Age",
						fill: false,
						lineTension: 0.1,
						backgroundColor: "rgba(59, 89, 152, 0.75)",
						borderColor: "rgba(59, 89, 152, 1)",
						pointHoverBackgroundColor: "rgba(59, 89, 152, 1)",
						pointHoverBorderColor: "rgba(59, 89, 152, 1)",
						data: score
					}
				]
			};

			var ctx = $("#line-chartcanvas");

			var LineGraph = new Chart(ctx, {
				type: 'line',
				data: chartdata
			});
		},
		error : function(data) {

		}
	});

	$.ajax({
		url: "./chart-php/data.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var player = [];
			var score = [];
	
			for(var i in data) {
				player.push("Model " + data[i].playerid);
				score.push(data[i].score);
			}
	
			var chartdata = {
				labels: player,
				datasets : [
					{
						label: 'Fail Age',
						backgroundColor: 'rgba(200, 200, 200, 0.75)',
						borderColor: 'rgba(200, 200, 200, 0.75)',
						hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
						hoverBorderColor: 'rgba(200, 200, 200, 1)',
						data: score
					}
				]
			};
	
			var ctx = $("#mybarChart");
	
			var barGraph = new Chart(ctx, {
				type: 'bar',
				data: chartdata
			});
		},
		error: function(data) {
			console.log(data);
		}
	});

});
