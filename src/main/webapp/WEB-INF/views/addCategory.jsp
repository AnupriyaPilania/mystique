<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
      <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Mystique</title>
    
    <c:import url="head-meta.jsp"></c:import>

</head>

<body>

<c:import url="/head"></c:import>




<div class="box">
<form:form method="post" action="AddCategoryToDB" modelAttribute="Category">
   <form:input path="CategoryName" type="text" placeholder="Enter Category Name"/>
   <input type="submit" class="btn btn-primary" value="ADD"/>
  </form:form>
</div>

</body>

</html>