<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<div class="alert alert-info">
        Shows the list of contacts retrieved from the Gmail providers. Following contacts are retrieved.
        </div>
 <div align="center">
<table border='1'>
	<tr><th>S. No.</th><th>Name</th><th>Email</th></tr>
	<c:forEach var="contact" items="${it.contacts}" varStatus="index">
		<tr>
			<td><c:out value="${index.count}"/></td>
			<td><c:out value="${contact.firstName}"/> <c:out value="${contact.lastName}"/></td>
			<td><c:out value="${contact.email}"/></td>
		</tr>
	</c:forEach>
</table>
</div>