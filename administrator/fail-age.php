<?php
	require('../func/config.php');
	if(!$user->is_logged_in()){ header('Location: login'); }
	
    $pagetitle ="Fail age ";
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
								<a href="#">Jobs</a>
							</li>
							<li class="active">Fail Age Analysis</li>
						</ul><!-- /.breadcrumb -->

					<?php include('includes/nav-setings.php');?>

						<div class="page-header">
							<h1>
							Fail Age Analysis

							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-sm-12">
										<div class="x_panel">
										<div class="x_title">
											<h2>Fail Age Line Graph </h2>
											
											<div class="clearfix"></div>
										</div>

										<a class="btn btn-primary" id="link1" download="FailAgeLineGraph.png" onclick="myFunction()">Save as png</a>
										<a class="btn btn-primary" id="link2" download="FailAgeLineGraph.jpg" onclick="myFunction()">Save as jpg</a>

										<div class="x_content">
											<canvas id="line-chartcanvas"></canvas>
										</div>
										</div>
									</div>
									</div>
									<div class="clearfix"></div>
									<br />
									
									<div class="row">
									<div id="chart-1"><!-- Fusion Charts will render here--></div>
									<div class="col-sm-12">
										<div class="x_panel">
										<div class="x_title">
											<h2>Fail Age Bar chart</small></h2>
											
											<div class="clearfix"></div>
										</div>
										<a class="btn btn-primary" id="link3" download="FailAgeBarchart.png" onclick="myFunction2()">Save as png</a>
										<a class="btn btn-primary" id="link4" download="FailAgeBarchart.jpg" onclick="myFunction2()">Save as jpg</a>
										<div class="x_content">
											<canvas id="mybarChart"></canvas>
										</div>
										</div>
									</div>
									</div>
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
		<script src="chartjs/js/Chart.min.js"></script>

		<script src="chartjs/js/failage.js"></script>
		<!-- end of line chart -->
		
		<script type="text/javascript">

		function myFunction(){
			var url_base64 = document.getElementById("line-chartcanvas").toDataURL("image/png");
            var url_base64jp = document.getElementById("line-chartcanvas").toDataURL("image/jpg");

            link1.href = url_base64;
            link2.href=url_base64jp

            var url = link1.href.replace(/^data:image\/[^;]/, 'data:application/octet-stream');
		}
		function myFunction2(){
			var url_base64 = document.getElementById("mybarChart").toDataURL("image/png");
            var url_base64jp = document.getElementById("mybarChart").toDataURL("image/jpg");

            link3.href = url_base64;
            link4.href=url_base64jp

            var url = link1.href.replace(/^data:image\/[^;]/, 'data:application/octet-stream');
		}
		</script>
	</body>
</html>
