<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sign Up to Social Network Viewer</title>
	<link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<div class="container">
		<form class="form-horizontal form-signup" role="form" action="signup" id="signup" method="POST">
			<h2 class="form-signin-heading">Sign Up</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">First name</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="firstName" name="firstName">
				</div>
			</div>
			<div class="form-group">
				<label for="lastName" class="col-sm-3 control-label">Last name</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="lastNname" name="lastName">
				</div>
			</div>
			<div class="form-group">
				<label for="username" class="col-sm-3 control-label">Username</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="username" name="username">
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Password</label>
				<div class="col-sm-9">
					<input type="password" class="form-control" id="password" name="password">
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button type="submit" class="btn btn-lg btn-primary btn-block">Sign Up</button>
		</form>
  <script src="assets/bower_components/jquery/jquery.min.js"></script>
	<script src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>