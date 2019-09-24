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
			
				<!--  New Hobbyist Button -->
				<input type="button" value="New Hobbyist" 
						onclick="window.location.href='addForm'; return false;"
						class="add-button"
				/>
			
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
					
						<!--  update link with hobbyist id -->
						<c:url var="updateLink" value="/hobbyist/updateForm">
							<c:param name="hobbyistId" value="${tempHobbyist.id}"/>
						
						</c:url>
						
						<c:url var="removeLink" value="/hobbyist/remove">
							<c:param name="hobbyistId" value="${tempHobbyist.id}"/>
						
						</c:url>
						
						<tr>
							<td> ${tempHobbyist.name}</td>
							<td> ${tempHobbyist.email}</td>
							<td> ${tempHobbyist.hobby}</td>
							<td> ${tempHobbyist.favoriteSite}</td>
							<td> ${tempHobbyist.url}</td>
							<td> ${tempHobbyist.hasPet}</td>
							<td> ${tempHobbyist.joinedDate}</td>
							<td>
								<a href="${updateLink}">Update</a> |
								<a href="${removeLink}"
									onclick="if(!(confirm('Remove the hobbyist?'))) return false">Remove
								</a>
								
									
							</td>
						</tr>
					</c:forEach>

				</table>
			</div>
			
		</div>
		
	</body>
	
</html>