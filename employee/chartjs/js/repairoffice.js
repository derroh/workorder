$(document).ready(function() {

	$.ajax({
		url: "./chart-php/data2.php",
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
						label: 'Repair office against product model',
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