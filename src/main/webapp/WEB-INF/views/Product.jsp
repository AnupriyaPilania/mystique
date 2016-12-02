<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp"></c:import>
<title>mystique</title>

</head>

<script type="text/javascript">
	var myApp = angular.module('xyz', []);
	myApp.controller('abc', function($scope) {
		$scope.data = ${pro};
	});
</script>

<body ng-app="xyz" ng-controller="abc" onload="Load()">


<c:import url="/head"></c:import>

<div class="box">
    <p>Product</p>
<div class="box1">

 <a type="button" href="${pageContext.request.contextPath}/addProduct"class="btn btn-warning">Add Products</a>
</div>
</div>


<br>
	<div class="container fluid">
		<table class="table">

			<tbody>
				<tr ng-repeat="x in data">
					<td><label>Product Name:&nbsp;{{ x.ProductName }}</label>
					    <label>Product Description:&nbsp;{{ x.ProductDescription }}</label>
					    <label>Product Qty:&nbsp;{{ x.ProductQty }}</label>
					    <label>Product Category:&nbsp;{{ x.ProductCategory }}</label>
					    <label>Product Price:&nbsp;{{ x.ProductPrice }}</label>
					    <label>Product Image:&nbsp;<img src="${pageContext.request.contextPath}/{{ x.ProductImage }}" width="100" class="img-responsive"></img></label>

                      
          <%
          
          if(request.isUserInRole("ADMIN"))
        	  
          {
        	  
           %>



					<div class="btn1">
								<a
									href="updateproduct/{{x.ProductId}}"
									class="button3">UPDATE</a>
							</div>
	
							<div class="btn1">
								<a
									href="deleteproduct/{{x.ProductId}}"
									class="button3">DELETE</a>
							</div>
					
				<%
				
                    }  
				
				%>	
                       <div class="btn1">
							<a href="${pageContext.request.contextPath}/view/{{x.ProductId}}"
								class="button3 ">VIEW</a>
						</div>
                        
					
					</td>
				</tr>
			</tbody>

		</table>

	</div>
</body>
</html>