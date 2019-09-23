<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

	<head>
		<title>List Hobbyists</title>
	</head>
	
	<body>
	
		<div id="wrapper">
			<div id="header">
				<h2>HRM - Hobby Relationship Manager</h2>
			</div>
		</div>
		
		<div id="container">
		
			<div id="content">
				<!--  add out html table here -->
				<table>
					<tr>
						<th>Name </th>
						<th>Email </th>
						<th>Hobby </th>
						<th>Favorite Site </th>
						<th>Url </th>
						<th>Has Pet </th>
						<th>Joined Date </th>
					</tr>
					
					<!--  loop over each hobbyists -->
					
					<c:forEach var="tempHobbyist" items="${hobbyists}">
						<tr>
							<td> ${tempHobbyist.name}</td>
							<td> ${tempHobbyist.email}</td>
							<td> ${tempHobbyist.hobby}</td>
							<td> ${tempHobbyist.favoriteSite}</td>
							<td> ${tempHobbyist.url}</td>
							<td> ${tempHobbyist.hasPet}</td>
							<td> ${tempHobbyist.joinedDate}</td>
						</tr>
					</c:forEach>

				</table>
			</div>
			
		</div>
		
	</body>
	
</html>