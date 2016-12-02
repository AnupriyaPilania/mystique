<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>mystique</title>
 <c:import url="head-meta.jsp"></c:import>

<script type="text/javascript">

	function Load()
	{
		document.getElementById('pq').value = "";
		document.getElementById('pp').value = "";
	}

</script>


</head>
<body onload="Load();">

<c:import url="/head"></c:import>

<div class="container">
 
 <form:form action="AddProductToDB" method="post" modelAttribute="Product" enctype="multipart/form-data">
 	
 	<div class="container">
 	
 		<table>
 		
 			<tr>
				<td>Product Name :</td>
				<td><form:input path="ProductName" type="text"/></td>
			</tr>
 		
 			<tr>
				<td>Description:</td>
				<td><form:input path="ProductDescription" type="text" /></td>
			</tr>
 		
 			<tr>
				<td>Quantity :</td>
				<td><form:input path="ProductQty" type="text" id="pq" /></td>
			</tr>
            
            <tr>
				<td>Category :</td>
				<td><form:select path="ProductCategory">
				
				<c:choose>
				
				<c:when test="${not empty Categories}">
                    <c:forEach var="item" items="${Categories}">
                          <form:option value="${item.categoryName}" />
                    </c:forEach>
                </c:when>
                    		
                <c:otherwise>
                          <form:option value="None" />
                </c:otherwise>
                    		
				</c:choose>
	  </form:select>
			</tr>
 		
 			<tr>
				<td>Price :</td>
				<td><form:input path="ProductPrice" type="text" id="pp" /></td>
			</tr>
			
			<tr>
				<td>Image :</td>
				<td>
					<form:input path="ProductFile"
									onchange="changeFileDisplay1();" type="file" style="opacity:1;"
									class="form-control" id="imageFile1" />
									
					<script type="text/javascript">
						function changeFileDisplay1()
						{
							document.getElementById("file_display1").innerHTML = $('#imageFile1').val();
						}
					</script>
									
				</td>
			</tr>
 		
 			<tr>
				<td colspan="2">
					<input type="submit" class="btn btn-primary" value="Save" />
				</td>
			</tr>
			
 		
 		</table>
 	
 	</div>
 
 </form:form>
 </div>
		

					<!-- <label class="form-control"><span
							id="file_display1">Choose Image</span><span
							style="position: relative;">
							
							</span></label> -->
					
			




</body>
</html>