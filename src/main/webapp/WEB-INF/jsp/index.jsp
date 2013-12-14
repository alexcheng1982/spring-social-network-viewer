<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Social Network Viewer</title>
	<link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<div id="wrap">
		<div class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a href="#" class="navbar-brand">Social Network Viewer</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<form action="signout" method="POST">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<button class="btn btn-default navbar-btn" type="submit">Sign Out</button>
							</form>
						</li>
					</ul>			
				</div>
			</div>
		</div>

		<div class="container">
			<div class="page-header">
				<h1>Social Network Viewer</h1>
			</div>
		</div>
	</div>

	<div id="footer">
		<div class="container">
			<p class="text-muted">&copy; 2013 Fu Cheng</p>
		</div>
	</div>
  <script src="assets/bower_components/jquery/jquery.min.js"></script>
	<script src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>