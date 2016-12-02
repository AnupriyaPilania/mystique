<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp"></c:import>
<title>Mystique</title>
<style>



</style>
</head>

<body>
<c:import url="head.jsp"></c:import>

<div align="center">

		<c:if test="${not empty passwordmismatch}">
			<br>
			<label class="alert alert-danger">Password Mismatch</label>
			<br>
		</c:if>

		<c:if test="${not empty useralreadyexists}">
			<br>
			<label class="alert alert-danger">Username Already Exists</label>
			<br>
		</c:if>

		<c:if test="${not empty success}"> 
			<br>
			<label class="alert alert-success">User Created Successfully</label>
			<br>
		</c:if>




      <form:form action="insertuser" method="post" modelAttribute="newuser">
                      
                             <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <form:input id="signup-name" type="" class="form-control" path="username" name="Username" placeholder="Enter your name" style="width:25%"/>
                                <label class="text text-danger"><form:errors path="username"/></label>
                             </div>
                             <div style="margin-bottom: 25px" class="input-group">
                                   <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> 
                                   <form:input id="signup-email" type="" class="form-control" path="email" name="Email" placeholder="Enter your email" style="width:25%"/>
                                   <label class="text text-danger"><form:errors path="email"/></label>
                           </div>
                            
                             <div style="margin-bottom: 25px" class="input-group">
                                     <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
                                     <form:input id="Password" type="Password" class="form-control" path="password" name="Password" placeholder="Enter your password" style="width:25%"/>
                                      <label class="text text-danger"><form:errors path="password"/></label>                      
                               </div>
                    <div style="margin-bottom: 25px" class="input-group">
                                     <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
                                     <form:input id="CPassword" type="Password" class="form-control" path="CPassword" name="CPassword" placeholder="Re-enter your password" style="width:25%"/>
                                </div>
                   <div style="margin-bottom: 25px" class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                                       <form:input class="form-control" rows="3" id="Address" placeholder="Enter your Address" path="address" name ="Address" style="width:25%"/>
                                       <label class="text text-danger"><form:errors path="address"/></label>                                
                                 </div>
                   <div style="margin-bottom: 25px" class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span> 
                                      <form:input id="Phone" type="" class="form-control" path="phone" name="Phone" placeholder="Enter your Phone Number" style="width:25%"/>
                                      <label class="text text-danger"><form:errors path="phone"/></label>
                                  </div>
                   <div style="margin-top: 10px" class="form-group">
<!-- Button -->
                   
                                         <input type="submit"	class="btn btn-primary btn-block" value="Save" style="width:25%" />
					                     
                                 </div>
                     </form:form>
                       
</div>
<div class="footer " style=" height:50px; background-color:#000000; margin-top:30px;" >
 <br>
 <center>
 <span>&copy; 2016 Mystique. All Rights Reserved </span>
 </center>
 </div>

 

</body>
</html>