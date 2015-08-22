<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<link href="/css/myForms.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<jsp:include page="pageHeader.jsp"></jsp:include>
	<div id="wrapper">

		<!-- Navigation -->


		<div id="page-wrapper">
			<form role="form">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Document</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Basic Information</div>
							<div class="panel-body">
								<div class="row">

									<fieldset>
										<div class="col-lg-6">
											<div class="form-group">
												<label>UID</label> <input class="form-control" disabled>
												<p class="help-block">Unique identify number for document will be generated by system.</p>
											</div>

											<label>Amount</label>
											<div class="form-group input-group">
												<span class="input-group-addon"><i class="fa fa-eur"></i> </span> <input type="text" class="form-control">
											</div>
										</div>
										<!-- /.col-lg-6 (nested) -->


										<div class="col-lg-6">
											<div class="form-group">
												<label>Client Name</label> <input class="form-control" name="username">
												<p class="help-block">Client's name .</p>
											</div>

											<label>Resource</label>
											<div class="form-group input-group">
												<span class="input-group-addon"><i class="fa fa-eur"></i> </span> <input type="text" class="form-control">
											</div>

										</div>
										<!-- /.col-lg-6 (nested) -->

										<div class="col-lg-12">
											<div class="form-group">
												<label>Description</label>
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</div>
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

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Agency manager's notice</div>
							<div>
								<div class="panel-body">
									<div class="row">
										<fieldset id="info2modify">
											<div class="col-lg-6">
												<div class="form-group">
													<label>Notation Agency</label> <input class="form-control">
													<p class="help-block">Unique identify number for document will be generated by system.</p>
												</div>
											</div>
											<!-- /.col-lg-6 (nested) -->



											<div class="col-lg-6">
												<div class="form-group">
													<label>Notice</label> <input class="form-control">
													<p class="help-block">Unique identify number for document will be generated by system.</p>
												</div>
											</div>
											<!-- /.col-lg-6 (nested) -->

											<div class="col-lg-12">
												<div class="form-group">
													<label>Comments</label>
													<textarea class="form-control" rows="3"></textarea>
												</div>
											</div>
										</fieldset>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Risk officer</div>
							<div class="panel-body">
								<div class="row">
									<fieldset id="info2risk">
										<div class="col-lg-6">
											<div class="form-group">
												<label>Notation Risque</label> <input class="form-control">
												<p class="help-block">Unique identify number for document will be generated by system.</p>
											</div>
										</div>
										<!-- /.col-lg-6 (nested) -->



										<div class="col-lg-6">
											<div class="form-group">
												<label>Notice</label> <input class="form-control">
												<p class="help-block">Unique identify number for document will be generated by system.</p>
											</div>
										</div>
										<!-- /.col-lg-6 (nested) -->

										<div class="col-lg-12">
											<div class="form-group">
												<label>Comments</label>
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</div>
									</fieldset>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Analyste officer</div>
							<div class="panel-body">
								<div class="row">
									<fieldset id="info2risk">
										<div class="col-lg-6">
											<div class="form-group">
												<label>Notation Analyste</label> <input class="form-control">
												<p class="help-block">Unique identify number for document will be generated by system.</p>
											</div>
										</div>
										<!-- /.col-lg-6 (nested) -->



										<div class="col-lg-6">
											<div class="form-group">
												<label>Notice</label> <input class="form-control">
												<p class="help-block">Unique identify number for document will be generated by system.</p>
											</div>
										</div>
										<!-- /.col-lg-6 (nested) -->

										<div class="col-lg-12">
											<div class="form-group">
												<label>Comments</label>
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</div>
									</fieldset>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">Back office</div>
							<div class="panel-body">
								<div class="row">
									<fieldset id="info2risk">
										<div class="col-lg-12">
											<div class="form-group">
												<label>Comments</label>
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</div>
									</fieldset>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-lg-12 text-center">

						<button type="submit" class="btn btn-primary btn-lg">Submit Button</button>
						<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Transfer Button</button>



					</div>
				</div>
				<br>
			</form>
		</div>
		<!-- /#page-wrapper -->



	</div>
	<!-- /#wrapper -->

	<!-- Modal -->
	<div class="modal fade in" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Decision</h4>
				</div>
				<div class="modal-body">

					<div class="row">

						<div class="col-lg-2"></div>
						<!-- /.col-lg-6 (nested) -->



						<div class="col-lg-8">
							<div class="form-group">
								<label class="control-label text-warning" for="inputSuccess">Actual step</label>
								<p class="form-control text-warning">1.Montage de dossiers</p>
							</div>

							<div class="form-group">
								<label class="control-label text-danger" for="inputSuccess">Decision</label> <select id="disabledSelect" class="form-control text-danger">
									<option>Disabled select1</option>
									<option>Disabled select2</option>
									<option>Disabled select3</option>
								</select>
							</div>
							
							<div class="form-group">
								<label class="control-label text-danger" for="inputSuccess">Destination</label> <select id="disabledSelect" class="form-control text-danger">
									<option>Disabled select1</option>
									<option>Disabled select2</option>
									<option>Disabled select3</option>
								</select>
							</div>

							<div class="form-group">
								<label>Comments</label>
								<textarea class="form-control" rows="3"></textarea>
							</div>
						</div>
						<!-- /.col-lg-6 (nested) -->

						<div class="col-lg-2"></div>

					</div>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Valide</button>
				</div>
			</div>
		</div>
	</div>


	<!-- jQuery -->
	<script src="/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="/bower_components/metisMenu/dist/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/dist/js/sb-admin-2.js"></script>

	<script>
		
	
	</script>

</body>

</html>
