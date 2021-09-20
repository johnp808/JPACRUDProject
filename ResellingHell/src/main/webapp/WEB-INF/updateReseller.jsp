<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>RH: Update Resellers Info </title>
	<jsp:include page="bootstrapHead.jsp"></jsp:include>
</head>
<body>

	<!-- 	
	<h3>${reseller.sellerUserName}'s Stats:</h3>
		<br>
		Starting Budget:
		$${reseller.startingBudget}
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
		Profit Made:
		$${reseller.profitsMade}
	 -->
	<h2>Current Details:</h2>
	<div>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Avatar</h3>
		<p>
			<img class="profile-picture" src="${reseller.profilePicture}"
				style="float: left; margin-right: 15px;" width="200" height="200"></img>
			
		</p>
		<p>Starting Budget: $${reseller.startingBudget}</p>
		<p>Shoes Sold: ${reseller.shoesSold}</p>
		<p>Comic Book Sold: ${reseller.comicBooksSold}</p>
		<p>Hats Sold: ${reseller.hatsSold}</p>
		<p>Profit Made: ${reseller.profitsMade}</p>

		<form action="updateReseller.do" method="POST">
		<input type="hidden" name="rid" value="${reseller.id}"/> 
			<!-- <form:input path="productName"  value="${cartDetail.product.name}"/>  -->
			Seller User Name: <input type="text"
				value="${reseller.sellerUserName}" name="sellerUserName" /> <br>
			Avatar(open an image in a new tab then pasted the link here): <input
				type="text" value="${reseller.profilePicture}" name="profilePicture" /> <br>
			Starting Budget: <input type="text"
				value="${reseller.startingBudget}" name="startingBudget" /> <br> Shoes
			Sold: <input type="text" value="${reseller.shoesSold}"
				name="shoesSold" /> <br> Comic Books Sold: <input type="text"
				value="${reseller.comicBooksSold}" name="comicBooksSold" /> <br>
			Hats Sold: <input type="text" value="${reseller.hatsSold}"
				name="hatsSold" /> <br> Profit Made: <input type="text"
				value="${reseller.profitsMade}" name="profitsMade" /> <br> <br>
			<input type="submit" value="Update" ${reseller.sellerUserName} /> <a
				href="/"> <input type="submit" value="Return Home" />
			</a>
		</form>
	</div>
	<jsp:include page="bootstrapHead.jsp"></jsp:include>
</body>
</html>