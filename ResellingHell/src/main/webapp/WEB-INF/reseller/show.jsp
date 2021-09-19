<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sellers Details</title>
<!--show.jsp is in a folder so for page= i used ../ to get it out and read bootstrapHead.jsp   --> 
<jsp:include page="../bootstrapHead.jsp"></jsp:include>

</head>
<body>
	<div>		<!--change film to reseller. whatever im getting -->
		<h5>${reseller.sellerUserName}</h5>
		<p><h6>${reseller.startingBudget}</h6>
		${reseller.shoesSold}
		${reseller.comicBooksSold}
		${reseller.hatsSold}
		<h6>${reseller.profitsMade}</h6>
		</p>
	</div>
			<!-- Same goes for the Foot.jsp -->
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>