<?php
	require('../func/config.php');
	if(!$user->is_logged_in()){ header('Location: login'); }
	
    $pagetitle ="Geo chart";
	$activeLicence = "active open";
	$activeAddLicence = "active";

?>
  <?php include('includes/header.php');?>
			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
 								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">Analysis charts</a>
							</li>
							<li class="active">Product Model Analysis</li>
						</ul><!-- /.breadcrumb -->

					<?php include('includes/nav-setings.php');?>

						<div class="page-header">
							<h1>
							Geo chart Analysis

							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-sm-12">
										<div class="x_panel">
										<div class="x_title">
											<h2>Distribution of total cost spent of model in each region  </h2>
											
											<div class="clearfix"></div>
										</div>

										<div class="btn-group" id="downloadDD">
											<button class="btn dropdown-toggle" data-toggle="dropdown">Download <span class="caret"></span></button>
											<ul class="dropdown-menu">
												<li><a tabindex="-1" href="#" dltype="image/jpeg">JPEG</a></li>
												<li><a tabindex="-1" href="#" dltype="image/png">PNG</a></li>
												<li><a tabindex="-1" href="#" dltype="application/pdf">PDF</a></li>
												<li><a tabindex="-1" href="#" dltype="image/svg+xml">SVG</a></li>
											</ul>
										</div>
										<div id="regions_div">											
										</div>
										<form method="post" action="http://export.highcharts.com/" id="imageGetForm">
											<input type="hidden" name="filename" value="savedFromGoogleVisualization" />
											<input type="hidden" name="type" id="imageGetFormTYPE" value="" />
											<input type="hidden" name="width" value="900" />
											<input type="hidden" name="svg" value="" id="imageGetFormSVG" />
										</form>
										</div>
									</div>
								</div>
								
								<div class="clearfix"></div>
									
							 <!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<?php  include('includes/footer.php'); ?>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="../assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="../assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
	
		<script src="chartjs/jquery-2.1.4.min.js"></script>
		<script src="chartjs/Chart.js"></script>
		<script src="chartjs/js/jquery.min.js"></script>
		
		
		<script src="../assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="../assets/js/wizard.min.js"></script>
		<script src="../assets/js/jquery.validate.min.js"></script>
		<script src="../assets/js/jquery-additional-methods.min.js"></script>
		<script src="../assets/js/bootbox.js"></script>
		<script src="../assets/js/jquery.maskedinput.min.js"></script>
		<script src="../assets/js/select2.min.js"></script>

		<script src="../assets/js/jquery-ui.min.js"></script>
		<script src="../assets/js/jquery.ui.touch-punch.min.js"></script>

		<script src="../assets/js/jquery-ui.custom.min.js"></script>
		<script src="../assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="../assets/js/chosen.jquery.min.js"></script>
		<script src="../assets/js/spinbox.min.js"></script>
		<script src="../assets/js/bootstrap-datepicker.min.js"></script>
		<script src="../assets/js/bootstrap-timepicker.min.js"></script>
		<script src="../assets/js/moment.min.js"></script>
		<script src="../assets/js/daterangepicker.min.js"></script>
		<script src="../assets/js/bootstrap-datetimepicker.min.js"></script>
		<script src="../assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="../assets/js/jquery.knob.min.js"></script>
		<script src="../assets/js/autosize.min.js"></script>
		<script src="../assets/js/jquery.inputlimiter.min.js"></script>
		<script src="../assets/js/jquery.maskedinput.min.js"></script>
		<script src="../assets/js/bootstrap-tag.min.js"></script>


		<!-- ace scripts -->
		<script src="../assets/js/ace-elements.min.js"></script>
		<script src="../assets/js/ace.min.js"></script>
		<script src="js/jquery.min.js"></script>
		<!-- line chart -->
		<!-- end of line chart -->
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		<!-- export -->
		
		<script src="chartjs/export/My.html2canvas"></script>		
		<script src="chartjs/export/html2canvas.min.js"></script>

		<script type="text/javascript">
			
			
		$(function() {
			$('#downloadDD li a').each(function() {
				$(this).click(function() {
					var svg=document.getElementById('regions_div').getElementsByTagName('svg')[0].parentNode.innerHTML;
					svg=sanitize(svg);
					$('#imageGetFormTYPE').val($(this).attr('dltype'));
					$('#imageGetFormSVG').val(svg);
					$('#imageGetForm').submit();
				});
			});
		});
		function sanitize(svg) {
				// sanitize
				svg = svg
					.replace(/\<svg/,'<svg xmlns="http://www.w3.org/2000/svg" version="1.1"')
					.replace(/zIndex="[^"]+"/g, '')
					.replace(/isShadow="[^"]+"/g, '')
					.replace(/symbolName="[^"]+"/g, '')
					.replace(/jQuery[0-9]+="[^"]+"/g, '')
					.replace(/isTracker="[^"]+"/g, '')
					.replace(/url\([^#]+#/g, 'url(#')
					.replace('<svg xmlns:xlink="http://www.w3.org/1999/xlink" ', '<svg ')
					.replace(/ href=/g, ' xlink:href=')
				/*.replace(/preserveAspectRatio="none">/g, 'preserveAspectRatio="none"/>')*/
				/* This fails in IE < 8
				.replace(/([0-9]+)\.([0-9]+)/g, function(s1, s2, s3) { // round off to save weight
				return s2 +'.'+ s3[0];
				})*/

				// IE specific
					.replace(/id=([^" >]+)/g, 'id="$1"')
					.replace(/class=([^" ]+)/g, 'class="$1"')
					.replace(/ transform /g, ' ')
					.replace(/:(path|rect)/g, '$1')
					.replace(/<img ([^>]*)>/gi, '<image $1 />')
					.replace(/<\/image>/g, '') // remove closing tags for images as they'll never have any content
					.replace(/<image ([^>]*)([^\/])>/gi, '<image $1$2 />') // closes image tags for firefox
					.replace(/width=(\d+)/g, 'width="$1"')
					.replace(/height=(\d+)/g, 'height="$1"')
					.replace(/hc-svg-href="/g, 'xlink:href="')
					.replace(/style="([^"]+)"/g, function (s) {
						return s.toLowerCase();
					});

				// IE9 beta bugs with innerHTML. Test again with final IE9.
				svg = svg.replace(/(url\(#highcharts-[0-9]+)&quot;/g, '$1')
					.replace(/&quot;/g, "'");
				if (svg.match(/ xmlns="/g).length == 2) {
					svg = svg.replace(/xmlns="[^"]+"/, '');
				}

				return svg;
			}

			google.charts.load('current', {
				'packages':['geochart'],
				// Note: you will need to get a mapsApiKey for your project.
				// See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
				'mapsApiKey': 'AIzaSyB4bj7v9j4uRt0Lm5VEyY2Cxl9IJ5XA6cA'
			});
			google.charts.setOnLoadCallback(drawRegionsMap);

			function drawRegionsMap() {

				$.ajax({
						url: "chart-php/data6.php",
						method: "GET",
						success: function(data) {
							console.log(data);
							
							var obj = JSON.parse(data);
							var datat = google.visualization.arrayToDataTable(obj);

							

							var options = {};

							var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

							chart.draw(datat, options);
											
								// };//
								},
								error: function(data) {
									console.log(data);
								}
							});
				
				}
			//make the chart responsive
				jQuery(document).ready(function(){
				jQuery(window).resize(function(){
				drawRegionsMap();
				});
			});

    	</script>
	</body>
</html>
