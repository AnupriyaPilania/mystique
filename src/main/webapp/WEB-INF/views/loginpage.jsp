<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
      <%@page isELIgnored="false"%>
      
      
      
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/head-meta"></c:import>
<title>Mystique</title>


</head>

<body>
<c:import url="/head"></c:import>





<form action="login" method="post">


			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Invalid Username and password.</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>You have been logged out successfully.</p>
				</div>
			</c:if>


<table>
				<tr>
					<td colspan="2" align="center"><h2>LOGIN PAGE</h2></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><input type="" name="Username" ></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type="password" name="Password" ></td>
				</tr>
			
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

				
				<tr>
					<td colspan="2" align="center"><input type="submit"
						class="btn btn-success" value="Login" /></td>
				</tr>
			</table>
		</form>
	<br>
	<br>
	
	

</body>
</html>