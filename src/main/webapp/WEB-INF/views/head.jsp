<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<style>

 ul{list-style-type: none; margin: 0; padding: 0; overflow: hidden; background-color: 99CCFF;font-size:100%  }
 

li a:hover {background-color:grey}


#bg img {
     position: absolute; 
     top: 0; 
     left: 0; 
     right: 0; 
     bottom: 0; 
     margin:auto;
     min-width:100%;
     min-height:100%;

     opacity:0.12;
}



footer {
    background-color: white;
    position: fixed;
    left: 0;
    bottom: 0;
    height: 20px;
    width: 100%;
    overflow:hidden;
    font-size:12px;
    
}


</style>
   
  
<div class="box">
<center>
<img src="resources/images/logo.jpg"></center>
</div>

<nav class="navbar navbar-inverse" ">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/index.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/index"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/contact.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/contact"><span class="glyphicon glyphicon-earphone"></span>Contact </a><li>
       
      <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/AboutUs.jsp'}">class="active"</c:if>> <a href="${pageContext.request.contextPath}/AboutUs">About Us</a></li>
      
      
       <%
       
      if(request.isUserInRole("ADMIN"))
      {
        %>
      
      <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/Category.jsp' }">class="active"</c:if>> <a href="${pageContext.request.contextPath}/Category">Category</a></li>
      
      <%
      }
      
      %>
      <%
   		if(request.isUserInRole("USER")) {	 
        
        %>
        
          <li><a href="${pageContext.request.contextPath}/initiateFlow" >View Cart</a></li>
        
        <%
   		}
        %>
      <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/Product.jsp' }">class="active"</c:if>> <a href="${pageContext.request.contextPath}/Product">Product</a></li>

      
       <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/signup2.jsp' }">class="active"</c:if>> <a id="myBtn" href="${pageContext.request.contextPath}/signup2">signup2</a></li>
       
      
      
      
      
       
	
		
   
      <input type="text" class="search" placeholder="search...   " style="padding:3px 4px;margin-top:10px;">
    <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> 
    </button>
 
    </ul> 
    <ul class="nav navbar-nav navbar-right">
    
    <c:choose>
       <c:when test="${not empty pageContext.request.userPrincipal}">
       
     
       <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/SignUp.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/index">${pageContext.request.userPrincipal.name}</a></li>
       <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/loginpage.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/logout">Login Out</a></li>
    
       
       </c:when>
    
    
    
      <c:otherwise>
    
      <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/SignUp.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/SignUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li <c:if test="${pageContext.request.requestURI eq '/mystique/WEB-INF/views/loginpage.jsp'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    
      </c:otherwise>
    
    </c:choose>
    </ul>
  </div>
</nav>

 
 
 
 
 