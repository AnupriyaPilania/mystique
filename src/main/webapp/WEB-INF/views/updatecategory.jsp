<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/head-meta"/>
<title>mystique</title>
</head>
<body>
<c:import url="/head"/>
<div class="container">

<form:input type="hidden" path="id"/>
            
                <h2 class="title"><b>UPDATE CATEGORY</b></h2>
                <div class="box-content">
                    <p class="description">
                    
                    <form:form method="POST" action="${pageContext.request.contextPath}/UpdateCategoryToDB" modelAttribute="Category">
                    
                    	<form:label path="CategoryName">Enter Category Name:</form:label>
                    	
                    	<form:input type="text" path="CategoryName" class="form-control"/>
                    
                    	<form:input path="id" type="hidden"/>
                    
                    	<br><br>
                    	<input type="submit" class="btn btn-primary" value="UPDATE"/>
                    
                    </form:form>
                    
                    </p>  
                </div>
        
    </div>  
</div>
 </body> </html>