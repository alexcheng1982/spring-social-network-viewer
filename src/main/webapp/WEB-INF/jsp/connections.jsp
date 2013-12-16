<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul class="media-list">
	<c:forEach items="${connections}" var="connection">
		<li class="media">
			<a href="" class="pull-left">
				<img src="${connection.profilePictureUrl}" alt="" class="media-object">
			</a>
			<div class="media-body">
				<h4 class="media-heading">${connection.firstName} ${connection.lastName}</h4>
				<p><c:out value="${connection.headline}" /></p>
			</div>
		</li>
	</c:forEach>
</ul>
