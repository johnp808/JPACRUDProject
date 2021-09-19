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
	<h1>Check Out A Sellers Information</h1>
	<div class="container-fluid">
		<form action="getReseller.do" method="GET">
			Reseller Id: <input type="text" name="fid" /> <input type="submit" value="Show Seller Info" />
		</form>

<table class="table thead-dark table-striped table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Seller User Name</th>
		
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="r" items="${resellers}" >
		<tr>
			<td> ${r.id } </td>
			<td><a href="getReseller.do?rid=${r.id }"> ${r.sellerUserName }</a></td> 
		</tr>
	</c:forEach>
	</tbody>		
		
</table>
	</div>
	<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>