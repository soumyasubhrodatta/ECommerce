<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="images" value="/rs/images" />
<spring:url var="customcs" value="/rs/css" />
<spring:url var="custumjs" value="/rs/js" />
<spring:url var="jquery" value="/rs/vendor/jquery" />
<spring:url var="bootcs" value="/rs/vendor/bootstrap/css" />
<spring:url var="bootjs" value="/rs/vendor/bootstrap/js" />


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">


<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>${title}</title>

<!-- Bootstrap core CSS -->
<link href="${bootcs}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap theme -->
<link href="${bootcs}/bootstrap.min.theme.css" rel="stylesheet">

<!-- Bootstrap DataTable -->
<link href="${customcs}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${customcs}/shop-homepage.css" rel="stylesheet">

<script>
	window.contextRoot = '${contextRoot}';
</script>

</head>

<body>
	<div class="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot}/home">Online
						Shopping</a>
				</div>
			</div>
		</nav>

		<div class="content">

			<div class="container">

				<c:if test="${not empty message}">
					<div class="row">

						<div class="col-md-offset-3 col-md-6">

							<div class="alert alert-danger">${message}</div>

						</div>

					</div>
				</c:if>
				<c:if test="${not empty logout}">
					<div class="row">

						<div class="col-md-offset-3 col-md-6">

							<div class="alert alert-success">${logout}</div>

						</div>

					</div>
				</c:if>

				<div class="row">

					<div class="col-md-offset-3 col-md-6">

						<div class="panel panel-primary">

							<div class="panel-heading">
								<h4>Login</h4>
							</div>

							<div class="panel-body">
								<form action="${contextRoot}/login" method="POST"
									class="form-horizontal" id="loginForm">


									<div class="form-group">
										<label for="username" class="col-md-4 control-label">Email:
										</label>
										<div class="col-md-8">
											<input type="text" name="username" id="username"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="password" class="col-md-4 control-label">Password:
										</label>
										<div class="col-md-8">
											<input type="password" name="password" id="password"
												class="form-control" />
										</div>
									</div>

									<div class="form-group">
										<div class="col-md-offset-4 col-md-8">
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" /> <input type="submit"
												value="Login" class="btn btn-primary" />
										</div>
									</div>


								</form>

							</div>
							<div class="panel-footer">
								<div class="text-right">
									New User - <a href="${contextRoot}/register">Register Here</a>
								</div>
							</div>

						</div>

					</div>

				</div>

			</div>


		</div>
		<!-- Footer -->
		<%@include file="shared/footer.jsp"%>
	</div>
	<!-- JQuery core JavaScript -->
	<script src="${jquery}/jquery.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="${bootjs}/bootstrap.min.js"></script>

	<!-- Datatable core -->
	<script src="${custumjs}/jquery.dataTables.js"></script>

	<!-- Datatable BootStrap -->
	<!--  
	<script src="${custumjs}/dataTables.bootstrap.js"></script>
	-->
	<!-- Custom Script -->
	<script src="${custumjs}/myscript.js"></script>
	</div>
</body>

</html>

