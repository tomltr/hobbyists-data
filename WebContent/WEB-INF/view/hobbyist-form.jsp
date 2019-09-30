<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
		<title>Add Hobbyist</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
				  
	</head>

	<body>
			
		<div class="container text-center">
			
			<h3>New Hobbyist</h3>
				
			<form:form action="saveHobbyist" modelAttribute="hobbyist" method="POST">
				
				<!--  associate the new data with hobbyist id  -->
				<form:hidden path="id" />
					
				<c:if test="${hobbyist.id eq 0 }">
					<c:set var="today" value="<%= new java.util.Date() %>" />
					<form:hidden path="joinedDate" value="${today}"/>
				</c:if>
					
				<form:hidden path="joinedDate" value="${hobbyist.joinedDate}"/>
				
								
				<div class="form-group row">
					<label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Name: </label>
					<div class="col-sm-10">
									
						<form:input path="name" id="colFormLabelLg" class="form-control form-control-lg"/>
					</div>
				</div>
							
							
				<div class="form-group row">
						<label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Email: </label>
						<div class="col-sm-10">
									
							<form:input path="email" id="colFormLabelLg" class="form-control form-control-lg"/>
						</div>
				</div>
							
							
				<div class="form-group row">
						<label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Hobby: </label>
						<div class="col-sm-10">
									
							<form:input path="hobby" id="colFormLabelLg" class="form-control form-control-lg"/>
						</div>
				</div>
							
				<div class="form-group row">
						<label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Favorite Site: </label>
						<div class="col-sm-10">
									
							<form:input path="favoriteSite" id="colFormLabelLg" class="form-control form-control-lg"/>
						</div>
				</div>
							
						
				<div class="form-group row">
						<label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Url: </label>
						<div class="col-sm-10">
									
								<form:input path="url" id="colFormLabelLg" class="form-control form-control-lg"/>
							</div>
				</div>
							
								
				<div class="form-group row">
							<label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Has Pet: </label>
							<div class="col-sm-10">
								<form:select path="hasPet" class="form-control">
									<form:option value="Yes" label="Yes"/>
									<form:option value="No" label="No"/>
								</form:select>
			
							</div>
				</div>
													
				<input type="submit" value="Save" class="btn  btn-info btn-block">
				<a class="btn btn-secondary btn-block" href="${pageContext.request.contextPath}/hobbyists/list" role="button" >Cancel</a>

			</form:form>
			
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
