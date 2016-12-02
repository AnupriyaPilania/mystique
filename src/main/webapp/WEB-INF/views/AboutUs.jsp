<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp"></c:import>

<title>Mystique</title>

<style >
#bg3 img {
   position: absolute; 
   top: 80%; 
   left:0; 
   right: 0; 
   bottom: 0; 
   margin:auto;
   min-width:100%;
   min-height:100%;
   float:center;
   ;
}

.create{

position:absolute;
left:0;
top:55%;
width: 100%;
text-align: center;
font-size:35px;font-style:italic;
font-family:georgia;
color:white;

}
.create2{

position:absolute;
left:0;
top:80%;
width: 100%;
text-align: center;
font-size:35px;font-style:italic;
font-family:georgia;
color:white;

}
</style>

</head>

<body >
<c:import url="head.jsp"></c:import>

<div class="box">
    <div id="bg3">
        <img src="resources/images/about5.jpg" alt="">
   </div>
<br>
</div>
<p class="create">
   Makeup has been around for over a hundred thousand years, and beauty is only evolving. What 
 started with red pigment clay is now a fascinating world of foundation, rouge, lipstick, blush, 
                       mascara, eye shadow, eye liner, eye caramba!
                       
                       </p>
                       
<p class="create2"> Meet Mystique, a powerful concoction of technology and beauty. A portal which delivers the best of 
                                   both the worlds.
</p>

<div class="footer " style=" height:50px; background-color:#000000; margin-top:710px;" >
 <br>
 <center>
 <span style="color:white">&copy; 2016 Mystique. All Rights Reserved </span>
 </center>
 </div>
 
 
 </div>
</body>
</html>