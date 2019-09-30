<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

	<head>
		<title>List Hobbyists</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	</head>
	
	<body>
		
		<div class="container text-center">
			
				
				<h2>Hobbyists Data</h2>
				<br/>
				<!--  Search field -->
				
		
				
				
					<form method="get" action="search" class="form-inline">
						
							<input class="form-control form-control-lg col-sm-10" type="text" name="keyword" />
						
							<div class="col-sm-2">
								<input class="btn btn-info " type="submit" value="Search" />
							</div>
					
					</form>
			
			
				
				<br/>
				
			
				
				
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
				<table class="table table-hover">
					<thead class="thead-dark">
						<tr>
						
							<th scope="col"><a href="${sortByName}">Name</a> </th>
							<th scope="col"><a href="${sortByEmail}">Email</a> </th>
							<th scope="col"><a href="${sortByHobby}">Hobby</a> </th>
							<th scope="col"><a href="${sortByFavoriteSite}">Site</a> </th>
							<th scope="col"><a href="${sortByHasPet}">Pet</a> </th>
							<th scope="col"><a href="${sortByJoinedDate}">Joined Date</a> </th>
							<th scope="col">
								<!--  New Hobbyist Button -->
								<a class="btn btn-primary" href="addForm">New</a>
							</th>
					
							<th scope="col">
								<!--  Refresh Button -->
								<a class="btn btn-secondary" href="list">Refresh</a>
							</th>
						
							
						</tr>
					</thead>
					
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
									<a class="btn btn-success" href="${updateLink}">Update</a> 
								</td>
								
								<td>
									<a  class="btn btn-danger" href="${removeLink}"
										onclick="if(!(confirm('Remove the hobbyist?'))) return false">Remove
									</a>
								</td>
							</tr>
						</c:forEach>
					

				</table>
			
		</div>
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" 
integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" 
crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" 
integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" 
crossorigin="anonymous"></script>
		
	</body>
	
</html>
