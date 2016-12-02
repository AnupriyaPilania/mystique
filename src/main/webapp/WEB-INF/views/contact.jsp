<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp"></c:import>

 
<title>Mystique</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
  
  
  footer {
    background-color: white;
    position: fixed;
    left: 0;
    bottom: 0;
    height: 20px;
    width: 100%;
    overflow:hidden;
    font-size:10px;
    
}

.container{
max-width: 100%;
    width: auto\9;
    height: auto;
    vertical-align: middle;
    border: 0;
  }
  
  </style>
</head>
<body>

<c:import url="/head"></c:import>

<div class="container">

 <img src="resources/images/banner.jpg" /></div>
 
 <div class="container-fluid cont"><br>
        <div class="row logoRow">
            <div class="col-md-8 logoCol" stypl="padding:5px">
            <img src="resources/images/corder.jpg" style="width:12%;height:23%;float:right;"/>
             <img src="resources/images/rorder.jpg" style="width:15%;height:10%;float:right"/>
                    <img src="resources/images/aorder.jpg" style="width:17%;height:30%;float:right"/>
              <img src="resources/images/torder1.jpg" style="width:17%;height:30%;float:right"/>
                <div class="logoCont center-block"></div>
            </div>
        </div>
    </div>
 

  <div class="container">
<form>

    <div class="form-group">
     <label for="usr">Name:</label>
      <input type="text" class="form-control" id="usr" style="width:25%"  >
    </div>
    
    <div class="form-group">
    <label for="email">Email address:</label>
    <input type="text" class="form-control" id="email"style="width:25%">
  </div>
  <div class="form-group">
  <label for="comment">Comment:</label>
  <textarea class="form-control" rows="5" id="comment" style="width:30%"></textarea>
</div>
<button type="submit" class="btn btn-default">Submit</button>

  </form>
</div>
<div class="footer " style=" height:50px; background-color:#000000; margin-top:30px;" >
 <br>
 <center>
 <span style="color:white">&copy; 2016 Mystique. All Rights Reserved </span>
 </center>
 </div>
 
 
 </div>
</body>
</html>