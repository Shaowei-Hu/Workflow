<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="st" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Workflow</title>
<link href="/Workflow/scriptLibrary/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/Workflow/styleSheet/sb-admin-2.css" rel="stylesheet">

<link href="/Workflow/styleSheet/general.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="wrapper">
<jsp:include page="../adminViews/adminHeader.jsp"></jsp:include>

<div id="page-wrapper">
	<div class="container">
		<br> <br>
					<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Workflow Steps</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->

		<button id="plus" type="button" class="btn btn-default">
			<span class="glyphicon glyphicon-plus"></span>
		</button>

		<button id="minus" type="button" class="btn btn-default">
			<span class="glyphicon glyphicon-minus"></span>
		</button>

		<br> <br>
		<table class="table table-hover" id="dataTables-example">
			<thead>
				<tr>
					<th>ID</th>
					<th>Step Id</th>
					<th>Step Name</th>
					<th>Service</th>
					<th>Phase</th>
					
					<th>Modify</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
			<tfoot>
				<tr>
					<th>ID</th>
					<th>Step Id</th>
					<th>Step Name</th>
					<th>Service</th>
					<th>Phase</th>
					
					<th>Modify</th>
					<th>Delete</th>
				</tr>
			</tfoot>
		</table>

	</div>
</div>
</div>

</body>

	<script src="/Workflow/scriptLibrary/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

	<script>
	var stepIdFlag = "";
	
    $.ajax({url: "/Workflow/workflow/getWorkflow", success: function(steps){
		$.each(steps, function(i, items) {
			//		alert(steps[i].stepId);
			if (stepIdFlag != steps[i].step_id) {
				$("tbody").append(
						"<tr class='step" + steps[i].step_id
								+ " rowClickable' onclick='myToggle(" + steps[i].step_id
								+ ")'><td>" + steps[i].id + "</td><td>"
								+ steps[i].step_id + "</td><td>"
								+ steps[i].step_name + "</td><td>"
								+ steps[i].service
								+ "</td><td>"+steps[i].phase+ "</td><td><a href='javascript:showStep("
								+ steps[i].step_id + ")'><span class='glyphicon glyphicon-wrench'></span></a></td><td><a href='javascript:deleteStep("
								+ steps[i].step_id + ")'><span class='glyphicon glyphicon-trash'></span></a></td></tr>");
				
			} 
			stepIdFlag = steps[i].step_id;
			//		$("tbody").append("<tr><td>"+steps[i].stepId+"</td><td>"+steps[i].stepName+"</td><td>"+steps[i].phase+"</td><td>"+steps[i].decision+"</td><td>"+steps[i].condition+"</td><td>"+steps[i].intervenor+"</td></tr>");
		});
	
    }});
    
    function showStep(id){
    	
    	window.location.href = "/Workflow/workflow/showStep/" + id;
    }
    
    $("#plus").click(function(){
    	window.location.href = "/Workflow/workflow/addWorkflowStep/";
    });

		
	</script>
</html>