$(document).ready(function () {
		$.ajax({
			url: "./chart-php/data5.php",
			method: "GET",
			success: function(data) {
				console.log(data);
				var player = [];
				var score = [];
		
				for(var i in data) {
					player.push("Model " + data[i].playerid);
					score.push(data[i].score);
				}

		var ctx1 = $("#pie-chartcanvas-1");

		var data1 = {
			labels : player,
			datasets : [
				{
					label : "Number of items",
					data : score,
					backgroundColor : [
						"#DEB887",
						"#A9A9A9",
						"#DC143C",
						"#F4A460",
						"#2E8B57",
						"#99CC33",
						"#99CC66",
						"#99FF33",
						"#33FF00",
						"#336633"
					],
					borderColor : [
						"#CDA776",
						"#989898",
						"#CB252B",
						"#E39371",
						"#1D7A46",
						"#CC3366",
						"#CC99CC",
						"#FF33CC",
						"#663399",
						"#9999FF",
					],
					borderWidth : [1, 1, 1, 1, 1]
				}
			]
		};

		var options = {
			title : {
				display : true,
				position : "top",
				text : "Product Model Pie Chart",
				fontSize : 18,
				fontColor : "#111"
			},
			legend : {
				display : true,
				position : "bottom"
			}
		};


		var chart1 = new Chart( ctx1, {
			type : "pie",
			data : data1,
			options : options
		});

	},
	error: function(data) {
		console.log(data);
	}

	});

});