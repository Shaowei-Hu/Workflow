<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Welcome Admin</title>

<jsp:include page="/pages/common/importCss.jsp"></jsp:include>


</head>

<body>



	<div id="wrapper">

		<jsp:include page="adminHeader.jsp"></jsp:include>

		<div id="page-wrapper">

			<br> <br> <br> <br>
			<div class="panel panel-default col-lg-3">
				<div class="panel-body">
					<img alt="Java" src="${pageContext.request.contextPath }/images/java.PNG" height="88" height="120">
				</div>
				<div class="panel-footer">Java 1.7</div>
			</div>
			
			<div class="panel panel-default col-lg-3">
				<div class="panel-body">
					<img alt="Spring" src="${pageContext.request.contextPath }/images/spring.PNG" height="88" height="120">
				</div>
				<div class="panel-footer">Spring</div>
			</div>
			
			<div class="panel panel-default col-lg-3">
				<div class="panel-body">
					<img alt="Hibernate" src="${pageContext.request.contextPath }/images/hibernate.PNG" height="88" height="120">
				</div>
				<div class="panel-footer">Hibernate</div>
			</div>
			
			<div class="panel panel-default col-lg-3">
				<div class="panel-body">
					<img alt="Mysql" src="${pageContext.request.contextPath }/images/mysql.PNG" height="88" height="120">
				</div>
				<div class="panel-footer">Mysql</div>
			</div>
			
			<div class="panel panel-default col-lg-3">
				<div class="panel-body">
					<img alt="Maven" src="${pageContext.request.contextPath }/images/maven.PNG" height="88" height="120">
				</div>
				<div class="panel-footer">Maven</div>
			</div>
			
			<div class="panel panel-default col-lg-3">
				<div class="panel-body">
					<img alt="jQuery" src="${pageContext.request.contextPath }/images/jquery.PNG" height="88" height="120">
				</div>
				<div class="panel-footer">jQuery</div>
			</div>
			
			<div class="panel panel-default col-lg-3">
				<div class="panel-body">
					<img alt="bootstrap" src="${pageContext.request.contextPath }/images/bootstrap.PNG" height="88" height="120">
				</div>
				<div class="panel-footer">Bootstrap</div>
			</div>



		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

</body>
</html>
