<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resellers Hell</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>
</head>
<body>
<h1><b>Reselling Hell</b></h1>
	<h3>Check Out A Sellers Information By Clicking Their Avatar</h3>
	<div class="container-fluid">
		<form action="getReseller.do?id=${reseller.id }" method="GET">
			Reseller Id: <input type="text" name="rid" /> <input type="submit" value="Show Seller Info By Id" />
		</form>
		<br>
		<form action="createResellerSlot.do" method="POST">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Add A Reseller" />
		</form>
		

<table class="table thead-dark table-striped table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Avatar</th>
			<th>Seller User Name</th>
		
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="r" items="${resellers}" >
		<tr>
			<td>${r.id}</td>
			<td><a href="getReseller.do?rid=${r.id}">
			<img class="profile-picture" src="${ r.profilePicture}" style="width:200px; height:200px" width="200" height="200"></img></a></td>
			<td style="text-align:left">${r.sellerUserName }</td>
		</tr>
	</c:forEach>
	</tbody>		
		
</table>
	</div>
	<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>