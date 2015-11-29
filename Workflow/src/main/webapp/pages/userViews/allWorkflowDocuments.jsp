<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="/Workflow/scriptLibrary/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- DataTables CSS -->
<link href="/Workflow/scriptLibrary/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="/Workflow/scriptLibrary/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/Workflow/styleSheet/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- Custom CSS -->
<link href="/Workflow/styleSheet/sb-admin-2.css" rel="stylesheet">

<link href="/Workflow/styleSheet/general.css" rel="stylesheet" type="text/css">

</head>
<body>
	<p id="tabIndex" class="hideUrl">${tab}</p>
	<div id="wrapper">

		<jsp:include page="userHeader.jsp"></jsp:include>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<br>
					<h1 class="page-header">Tables</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			
			<div class="row">
				<div class="col-lg-12">
					<ul class="nav nav-tabs nav-justified">
						<li><a href="myList"><h5><strong>My Document To Treat</strong></h3></a></li>
						<li><a href="myintervenedList"><h5><strong>My Document intervened</strong></h3></a></li>
						<li><a href="#"><h5><strong>Menu 2</strong></h5></a></li>
						<li><a href="#"><h5><strong>Menu 3</strong></h5></a></li>
					</ul>
					<div class="panel panel-default">
						<div class="panel-heading">DataTables Advanced Tables</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover" id="dataTables">


									<thead>
										<tr>
											<th>ID</th>
											<th>Client Name</th>
											<th>Amount</th>
											<th>Resource</th>
											<th>Author</th>
											<th>Responsible</th>
											<th>Current Step</th>
											<th>Step time</th>
											<th class="hideUrl"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${allDocuments}">
											<tr class="rowClickable">
												<td class="idcell"><c:out value="${item.documentId}" /></td>
												<td class="username"><c:out value="${item.client}" /></td>
												<td class="desc"><c:out value="${item.amount}" /></td>
												<td class="desc"><c:out value="${item.resource}" /></td>
												<td class="desc"><c:out value="${item.author.userName}" /></td>
												<td class="desc"><c:out value="${item.responsible.userName}" /></td>
												<td class="desc">${item.currentStep}</td>
												<td class="desc"><c:out value="${item.stepDate}" /></td><td class="hideUrl">show/${item.documentId}</td></tr>
										</c:forEach>
									</tbody>
								</table>

							</div>


						</div>
						<!-- /.table-responsive -->
						<div class="well">
							<h4>DataTables Usage Information</h4>
							<p>
								DataTables is a very flexible, advanced tables plugin for jQuery. In SB Admin, we are using a specialized version of DataTables built for Bootstrap 3. We have also
								customized the table headings to use Font Awesome icons in place of images. For complete documentation on DataTables, visit their website at <a target="_blank"
									href="https://datatables.net/">https://datatables.net/</a>.
							</p>
							<a class="btn btn-default btn-lg btn-block" target="_blank" href="https://datatables.net/">View DataTables Documentation</a>
						</div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>

	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- DataTables JavaScript -->
	<script src="/Workflow/scriptLibrary/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="/Workflow/scriptLibrary/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {
			$('#dataTables').DataTable({
				responsive : true
			});
			
			$(".nav-tabs").children().eq($("#tabIndex").text()).addClass("active");
		});

		function init() {
			initClickable();

		}

		function initClickable() {
			var rows = document.getElementsByTagName("tr");
			for (var i = 0; i < rows.length; i++) {
				if (rows[i].className == "rowClickable") {
					rows[i].onclick = clickRow;
				}
			}

		}

		function clickRow(event) {
			var thisElement = event.srcElement || event.target;
			window.location.href = thisElement.parentNode.lastChild.firstChild.nodeValue;
			
		}

		init();

		
	</script>
</body>
</html>