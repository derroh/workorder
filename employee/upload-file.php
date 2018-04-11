<?php
	require('../func/config.php');
	if(!$user->is_logged_in()){ header('Location: login'); }

  $pagetitle ="Upload excel file";
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
							<li class="active">Submit Work</li>
						</ul><!-- /.breadcrumb -->

					<?php include('includes/nav-setings.php');?>

						<div class="page-header">
							<h1>
								Submit Work
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">

									</div>

									<div class="widget-body">
										<div class="widget-main">
											<div id="fuelux-wizard-container">
												<div>
													<ul class="steps">
														<li data-step="1" class="active hidden">

														</li>

													</ul>
												</div>

												<div class="step-content pos-rel">
													<div class="step-pane active" data-step="1">
														<h3 class="lighter block green">Enter the following information</h3>
														<?php
														if(isset($_POST['submit_btn']))
														{																
															if(!$user->is_logged_in()){
																$errMSG = "An error occured";
															}else
															{
																//  $imagedata = file_get_contents($_FILES["animal_images"]["tmp_name"]);

																$imgFile = $_FILES['JobDocument']['name'];
																$tmp_dir = $_FILES['JobDocument']['tmp_name'];
																$imgSize = $_FILES['JobDocument']['size'];

																$upload_dir = '../uploads/'; // upload directory

																$imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION)); // get image extension

																// valid image extensions
																$valid_extensions = array('csv'); // valid extensions

																// rename uploading image
																$Documentname = rand(1000,1000000).".".$imgExt;

																// allow valid image file formats
																if(in_array($imgExt, $valid_extensions)){
																	// Check file size '5MB'
																	if($imgSize < 5000000)				{
																	move_uploaded_file($tmp_dir,$upload_dir.$Documentname);
																	}
																	else{
																	$errMSG = "Sorry, your file is too large.";
																	}
																}
																else{
																	$errMSG = "Sorry, an error occured. Use the right document format";
																}
															}

															if(!isset($errMSG))
															{
																	$me = $_SESSION['Id'];
																	$Status = 0;
																	$stmt = $db->prepare('INSERT INTO uploaded_files(Uploader, File, Imported) VALUES (:Uploader, :File, :Imported)');

																	$stmt->bindParam(':Uploader', $me);
																	$stmt->bindParam(':File', $Documentname);
																	$stmt->bindParam(':Imported', $Status);
																	if($stmt->execute())
																	{
																	$message = "Your file has been successfully submitted.";
																	//header("refresh:5;index.php"); // redirects image view page after 5 seconds.
																	}
																	else
																	{
																	$errMSG = "An error occured while submitting....";
																	}

															}
														}
														if(isset($message)){
														echo "<div class='alert alert-success' role='alert'>
																	<strong>Well done!</strong> $message.
																</div>
																<div class='clearfix'> </div>
																" ;
														}else if(isset($errMSG)) {
														echo "<div class='alert alert-danger' role='alert'>
																<strong> Oh snap!</strong> $errMSG.
																</div>
																<div class='clearfix'> </div>
																";
														}?>

													<form class="form-horizontal" id="licences" method="post" action="" enctype="multipart/form-data">
															<div class="form-group">
																<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="JobDocument">Upload Job:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="file" class="input-sm" id="JobDocument" name="JobDocument" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>

													</div>
												</div>
											</div>
											<hr />
											<div class="wizard-actions center">

												<button class="btn btn-white btn-info btn-bold" data-last="Finish" type="submit" name="submit_btn">
													<i class="ace-icon fa fa-floppy-o bigger-120 green"></i>
													Save
												</button>
												</form>
												<button class="btn btn-white btn-default btn-bold">
													<i class="ace-icon fa fa-times red2"></i>
													Cancel
												</button>
											</div>

										</div><!-- /.widget-main -->
									</div><!-- /.widget-body -->
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

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {

				$('[data-rel=tooltip]').tooltip();

				$('.select2').css('width','200px').select2({allowClear:true})
				.on('change', function(){
					$(this).closest('form').validate().element($(this));
				});



				var $validation = true;
				$('#fuelux-wizard-container')
				.ace_wizard({
					//step: 2 //optional argument. wizard will jump to step "2" at first
					//buttons: '.wizard-actions:eq(0)'
				})
				.on('actionclicked.fu.wizard' , function(e, info){
					if(info.step == 1 && $validation) {
						if(!$('#licences-form').valid()) e.preventDefault();
					}
				})
				//.on('changed.fu.wizard', function() {
				//})
				.on('finished.fu.wizard', function(e) {
					$.post('../custom/make-bid.php',
				  {
				    QuotedDays: $('[name=QuotedDays]').val(), QuotedAmount: $('[name=QuotedAmount]').val(), JobId: "<?php echo $_GET['id'];?>"
				  },
				  function(data){
						bootbox.dialog({
							message: data,
							buttons: {
								"success" : {
									"label" : "OK",
									"className" : "btn-sm btn-primary"
								}
							}
						});
            //clearfiels
          //  $('[name=LicenceName]').val('');
        //    $('[name=ActivationCode]').val('');
        //    $('[name=LicenceVendor]').val('');
				  });
				}).on('stepclick.fu.wizard', function(e){
				  //e.preventDefault();//this will prevent clicking and selecting steps
				});

				$('#licences-form').validate({
					errorElement: 'div',
					errorClass: 'help-block',
					focusInvalid: false,
					ignore: "",
					rules: {
						QuotedAmount: {
				      required: true
				    }

					},

					messages: {
						QuotedAmount: "Please choose a file to upload"
					},


					highlight: function (e) {
						$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
					},

					success: function (e) {
						$(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
						$(e).remove();
					},

					errorPlacement: function (error, element) {
						if(element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
							var controls = element.closest('div[class*="col-"]');
							if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
							else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
						}
						else if(element.is('.select2')) {
							error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
						}
						else if(element.is('.chosen-select')) {
							error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
						}
						else error.insertAfter(element.parent());
					},

					submitHandler: function (form) {
					},
					invalidHandler: function (form) {
					}
				});

				$(document).one('ajaxloadstart.page', function(e) {
					//in ajax mode, remove remaining elements before leaving page
					$('[class*=select2]').remove();
				});
				//override dialog's title function to allow for HTML titles
				$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
					_title: function(title) {
						var $title = this.options.title || '&nbsp;'
						if( ("title_html" in this.options) && this.options.title_html == true )
							title.html($title);
						else title.text($title);
					}
				}));
				autosize($('textarea[class*=autosize]'));
				$('#QuotedDays').ace_spinner({value:0,min:1,max:10000,step:1, touch_spinner: true, icon_up:'ace-icon fa fa-caret-up bigger-110', icon_down:'ace-icon fa fa-caret-down bigger-110'});
				$('#LicenceValidity').ace_spinner({value:0,min:1,max:10000,step:1, touch_spinner: true, icon_up:'ace-icon fa fa-caret-up bigger-110', icon_down:'ace-icon fa fa-caret-down bigger-110'});


			});
		</script>
	</body>
</html>
