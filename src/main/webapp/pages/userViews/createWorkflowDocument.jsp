<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="st" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<jsp:include page="/pages/common/importCss.jsp"></jsp:include>

</head>

<body>

	<jsp:include page="userHeader.jsp"></jsp:include>
	<div id="wrapper">

		<!-- Navigation -->


		<div id="page-wrapper">
		<span>&nbsp;</span>
			<st:form method="post" modelAttribute="document" action="create">
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
												<span class="input-group-addon"><i class="fa fa-eur"></i> </span>
												<st:input type="text" class="form-control" path="amountSt"></st:input>
											</div>
										</div>
										<!-- /.col-lg-6 (nested) -->


										<div class="col-lg-6">
											<div class="form-group">
												<label>Client Name</label> <st:input class="form-control" path="client"></st:input>
												<p class="help-block">Client's name .</p>
											</div>

											<label>Resource</label>
											<div class="form-group input-group">
												<span class="input-group-addon"><i class="fa fa-eur"></i> </span>
												<st:input type="text" class="form-control" path="resourceSt"></st:input>
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
					<div class="col-lg-12 text-center">

						<button type="submit" class="btn btn-primary btn-lg">Submit Button</button>
						
					</div>
				</div>
				<br>
			</st:form>
		</div>
		<!-- /#page-wrapper -->



	</div>
	<!-- /#wrapper -->


	<script>
		
	
	</script>

</body>

</html>
