<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a href="#" class="navbar-brand">Social Network Viewer</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="profile"><c:out value="${account.displayName}" /></a>
				</li>
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