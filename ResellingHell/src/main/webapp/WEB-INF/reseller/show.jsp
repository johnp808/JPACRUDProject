<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RH: Resellers Details</title>
<!--show.jsp is in a folder so for page= i used ../ to get it out and read bootstrapHead.jsp   --> 
<jsp:include page="../bootstrapHead.jsp"></jsp:include>

</head>
<body>
	<div>
		<h3>${reseller.sellerUserName}'s Stats:</h3>
		<br>
		
		
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Avatar</h3>
<img class="profile-picture" src="${ reseller.profilePicture}" style="float: left; margin-right: 15px;" width="200" height="200" </img>

		Starting Budget: $${reseller.startingBudget}
		<br>
		Shoes Sold:
		${reseller.shoesSold}
		<br>
		Comic Books Sold:
		${reseller.comicBooksSold}
		<br>
		Hats Sold:
		${reseller.hatsSold}
		<br>
		Profit Made: $${reseller.profitsMade}
	</div>
	<br>
	<br>
	<br>
	<br>
	<form action="updateResellerSlot.do" method="POST">
	<input type="hidden" name="rid" value="${reseller.id}"/> 
	<input type="submit" value="Update Reseller Stats" />
	</form>
	<br><form action="deleteReseller.do" method="POST">
	<input type="hidden" name="rid" value="${reseller.id}"/> 
	<br> <input type="submit" value="Delete Reseller" />
	</form>
	<!-- create go home button here -->
	<a href="/">
       <input type="submit" value="Return Home"/>
     </a>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>

</body>
</html>