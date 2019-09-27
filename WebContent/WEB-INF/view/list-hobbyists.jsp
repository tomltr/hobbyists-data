<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
				
			
				<!--  Search field -->
				<form method="get" action="search">
					<input type="text" name="keyword" />
					<input type="submit" value="Search" />
				</form>
				
			
				<!--  New Hobbyist Button -->
				<input type="button" value="New Hobbyist" 
						onclick="window.location.href='addForm'; return false;"
						class="add-button"
				/>
				
				<!--  Refresh Button -->
				<input type="button" value="Refresh"
						onclick="window.location.href='/hobbyists-data/hobbyists/list'"
				/>
				
				<!--  Sorting Links -->
				
				 <c:url var="sortByName" value="/hobbyists/sort" >
				 	<c:param name="option" value="name"/>

				 </c:url>
				 
				  <c:url var="sortByEmail" value="/hobbyists/sort" >
				 	<c:param name="option" value="email" />
				 </c:url>
				 
				  <c:url var="sortByHobby" value="/hobbyists/sort" >
				 	<c:param name="option" value="hobby" />
				 </c:url>
				 
				  <c:url var="sortByFavoriteSite" value="/hobbyists/sort" >
				 	<c:param name="option" value="favoriteSite" />
				 </c:url>

				 
				  <c:url var="sortByHasPet" value="/hobbyists/sort" >
				 	<c:param name="option" value="hasPet" />
				 </c:url>
				 
				  <c:url var="sortByJoinedDate" value="/hobbyists/sort" >
				 	<c:param name="option" value="joinedDate" />
				 </c:url>
				 
			
				<!--  add out html table here -->
				<table>
					<tr>
					
						<th><a href="${sortByName}">Name</a> </th>
						<th><a href="${sortByEmail}">Email</a> </th>
						<th><a href="${sortByHobby}">Hobby</a> </th>
						<th><a href="${sortByFavoriteSite}">Favorite Site</a> </th>
						<th><a href="${sortByHasPet}">Has Pet</a> </th>
						<th><a href="${sortByJoinedDate}">Joined Date</a> </th>
					
						
					</tr>
					
					<!--  loop over each hobbyists -->
					
					<c:forEach var="tempHobbyist" items="${hobbyists}">
					
						<!--  update link with hobbyist id -->
						<c:url var="updateLink" value="/hobbyists/updateForm">
							<c:param name="hobbyistId" value="${tempHobbyist.id}"/>
						
						</c:url>
						
						<c:url var="removeLink" value="/hobbyists/remove">
							<c:param name="hobbyistId" value="${tempHobbyist.id}"/>
						
						</c:url>
						
						<tr>
							<td>${tempHobbyist.name}</td>
							<td>${tempHobbyist.email}</td>
							<td>${tempHobbyist.hobby}</td>
							<td><a href="${tempHobbyist.url}">${tempHobbyist.favoriteSite}</a></td>
							<td>${tempHobbyist.hasPet}</td>
							<td>${tempHobbyist.joinedDate}</td>
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