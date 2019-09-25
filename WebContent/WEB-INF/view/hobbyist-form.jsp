<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Add Hobbyist</title>
		<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/resources/css/style.css">
			  
		<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/resources/css/add-hobbyist-style.css">
			  
	</head>

	<body>
		<div id="wrapper">
		
			<div id="header">
			
				<h2>HRM - Hobbyist Relationship Manager</h2>
			
			</div>  
			
			<div id="container">
			
				<h3>New Hobbyist</h3>
				
				<form:form action="saveHobbyist" modelAttribute="hobbyist" method="POST">
				
					<!--  associate the new data with hobbyist id  -->
					<form:hidden path="id" />
				
					<table>
					
						<tbody>
						
							<tr>
								<td><label>Name: </label></td>
								<td><form:input path="name"/></td>
							</tr>
							
							<tr>
								<td><label>Email: </label></td>
								<td><form:input path="email"/></td>
							</tr>
							
							<tr>
								<td><label>Hobby: </label></td>
								<td><form:input path="hobby"/></td>
							</tr>
							
							<tr>
								<td><label>Favorite Site: </label></td>
								<td><form:input path="favoriteSite"/></td>
							</tr>
							
							<tr>
								<td><label>Url: </label></td>
								<td><form:input path="url"/></td>
							</tr>
							
							<tr>
								<td><label>Has Pet: </label></td>
								<td><form:radiobutton path="hasPet" value="Yes" />Yes</td>
								<td><form:radiobutton path="hasPet" value="No" />No</td>
							</tr>
							
								<tr>
								<td><label></label></td>
								<td><input type="submit" value="Create" class="save"/></td>
							</tr>
						
						</tbody>
					
					</table>
				
				</form:form>
				
				<div style="clear; both;">
				
					<p>
						<a href="${pageContext.request.contextPath}/hobbyists/list">Back to List</a>
					</p>
				
				</div>
				
			
			</div>
		
		</div>
	</body>
	
</html>