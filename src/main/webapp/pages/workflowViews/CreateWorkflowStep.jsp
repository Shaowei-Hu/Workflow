<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<style type="text/css">

#decisionHidden {
	display: none;
}
</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Admin 2 - Bootstrap Admin Theme</title>

<link href="/Workflow/scriptLibrary/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/Workflow/styleSheet/sb-admin-2.css" rel="stylesheet">

<link href="/Workflow/styleSheet/general.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<jsp:include page="../adminViews/adminHeader.jsp"></jsp:include>
	<div id="wrapper">

		<!-- Navigation -->


		<div id="page-wrapper">
			<form role="form">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Create New Step</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Step Information</div>
							<div class="panel-body">
								<div class="row">

									<fieldset>
										<div class="col-lg-6">
											<div class="form-group">
												<label>ID</label> <input class="form-control" disabled>
												<p class="help-block">User's identify number will be generated by system automatically.</p>
											</div>
											<div class="form-group">
												<label>Step Name</label> <input class="form-control" name="stepName">
												<p class="help-block">User's name .</p>
											</div>
											<div class="form-group">
												<label>Phase</label> <input class="form-control" name="username">
												<p class="help-block">User's name .</p>
											</div>
										</div>
										<!-- /.col-lg-6 (nested) -->


										<div class="col-lg-6">
											<div class="form-group">
												<label>Step Id</label> <input class="form-control" name="stepId">
												<p class="help-block">User's name .</p>
											</div>
											<div class="form-group">
												<label>Service</label> <input class="form-control" name="service">
												<p class="help-block">Intervoner service .</p>
											</div>
										</div>
										<!-- /.col-lg-6 (nested) -->
									</fieldset>

								</div>
								<!-- /.row (nested) -->
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div id="decisions">
					<div class="row" id="decisionHidden">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<span>Decision</span> <a href="#"><span id="deleteHidden" class="glyphicon glyphicon-trash pull-right"></span></a>
								</div>
								<div>
									<div class="panel-body">
										<div class="row">
											<fieldset id="info2modify">
												<div class="col-lg-6">

													<div class="form-group">
														<label>Decision</label> <input class="form-control" name="stepName">
														<p class="help-block">Decision</p>
													</div>

													<div class="form-group">
														<label>Condition</label> <input class="form-control" name="stepName">
														<p class="help-block">User's name .</p>
													</div>




												</div>
												<!-- /.col-lg-6 (nested) -->
												<div class="col-lg-6">


													<div class="form-group">
														<label for="select">Next Step</label> <select id="disabledSelect" class="form-control">
															<option>Disabled select1</option>
															<option>Disabled select2</option>
															<option>Disabled select3</option>
														</select>
													</div>

												</div>
												<!-- /.col-lg-6 (nested) -->
											</fieldset>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<span>Add a decision </span><a href="#"><span id="addDecision" class="glyphicon glyphicon-plus pull-right"></span></a>
							</div>
							<div>
								<p></p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 text-center">

						<button type="submit" class="btn btn-primary btn-lg">Submit Button</button>

					</div>
				</div>
				<br>
			</form>
		</div>
		<!-- /#page-wrapper -->



	</div>
	<!-- /#wrapper -->

	<script src="/Workflow/scriptLibrary/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

	<script>
		$(document).ready(
						function() {
							var decisionNum = 0;
							$("#addDecision").click(
									function() {
										var newDecision = $("#decisionHidden").clone().attr("id", "decision-" + decisionNum);
										newDecision.appendTo("#decisions");

										var newDelete = $("#decision-"+decisionNum+" .glyphicon").attr("id", "delete-" + decisionNum );

										newDelete.click(
												function() {

													var flag = confirm("Do you want to delete this decision?");
													if (flag)
														$(this).parent().parent()
																.parent().parent()
																.parent().remove();

												});
										
										decisionNum++;
									});

						});
	</script>

</body>

</html>