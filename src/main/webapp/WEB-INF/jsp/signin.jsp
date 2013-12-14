<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sign In to Social Network Viewer</title>
	<link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<div class="container">
		<form id="signin-form" action="signin/authenticate" class="form-signin" role="form" method="POST">
			<h2 class="form-signin-heading">Please sign in</h2>
			<input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
			<input type="password" name="password" class="form-control" placeholder="Password" required>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button type="submit" class="btn btn-lg btn-primary btn-block">Sign In</button>
		</form>
		<form id="linkedin-signin-form" action="signin/linkedin" method="POST" class="form-signin" role="form">
			<h2 class="form-signin-heading">Or Connect by</h2>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button type="submit" class="btn btn-primary">LinkedIn</button>
		</form>
	</div>
  <script src="assets/bower_components/jquery/jquery.min.js"></script>
	<script src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>