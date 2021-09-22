<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RH: Add A New Reseller</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>
</head>
<body>

	<form action="createReseller.do" method="POST">
		Resellers Name: <input type="text" name="sellerUserName" /> <br>
		Resellers Profile Picture: (Right Click, Open Image In New Tab, Copy
		And Then Paste The address) <input type="text" name="profilePicture" />
		<br> Starting Budget: <input type="text" name="startingBudget" />
		<br> Shoes Sold: <input type="text" name="soldShoes" /> <br>
		Comic Book Sold: <input type="text" name="comicBooksSold" /> <br>
		Hats Sold: <input type="text" name="hatsSold" /> <br> Profit
		Made: <input type="text" name="profitMade" /> <br> <input
			type="submit" value="Add New Reseller" />
	</form>
	<a href="home.do"> <input type="submit" value="Return Home" /></a>
	<jsp:include page="bootstrapHead.jsp"></jsp:include>
</body>
</html>