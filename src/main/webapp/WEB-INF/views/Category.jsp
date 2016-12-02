<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="head-meta.jsp"></c:import>

<title>Mystique</title>

<style>
p{
font-style:webregular;
font-size:200%;

}


</style>
</head>


<script type="text/javascript">
	var myApp = angular.module('xyz', []);
	myApp.controller('abc', function($scope) {
		$scope.data = ${Cat};
	});
</script>


<body ng-app="xyz" ng-controller="abc">

<c:import url="/head"></c:import>

<div class="box">
<p>Category</p>
<div class="box1">

 <a type="button" href="${pageContext.request.contextPath}/addCategory"
 class="btn btn-primary">Add Category</a>
</div>
</div>

<br>
	<div class="container fluid">
		<table class="table">

			<tbody>
				<tr ng-repeat="x in data">
					<td><label>Category Name:&nbsp;{{ x.CategoryName }}</label>
					
					
					<%
					if(request.isUserInRole("ADMIN"))
					{
					
					%>
					
					
					<div class="btn1">
								<a
									href="updatecategory/{{x.Id}}"
									class="button3">UPDATE</a>
							</div>
	
							<div class="btn1">
								<a
									href="deletecategory/{{x.Id}}"
									class="button3">DELETE</a>
							</div>
					
					<%
					
					}
					
					%>
					
					</td>
				</tr>
			</tbody>

		</table>

	</div>



<div class="footer " style=" height:50px; background-color:#000000; margin-top:710px;" >
 <br>
 <center>
 <span style="color:white">&copy; 2016 Mystique. All Rights Reserved </span>
 </center>
 </div>
 

</body>
</html>