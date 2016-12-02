<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta" />

<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      height:100%;
      margin: auto;
     padding:10px;
     }
  
  
  .img-circle{

border-radius:20%;
margin-top:20%;

}

hr {
  
    border-top: 2px solid #660066;
    border-bottom:2px solid #660066;
    overflow: hidden;
    margin: 0 auto;
    width: 93em;
    ;
}






</style>
</head>
<body>

 <c:import url="head.jsp"></c:import>
 
 
 <br><br><br>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
    <li data-target="#myCarousel" data-slide-to="6"></li>
    <li data-target="#myCarousel" data-slide-to="7"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/images/11.jpg" alt="">
    </div>

    <div class="item">
      <img src="resources/images/12.jpg" alt="" height="60%">
    </div>

    <div class="item">
      <img src="resources/images/13.jpg" alt="">
    </div>

    <div class="item">
      <img src="resources/images/14.jpg" alt="">
    </div>
    
    <div class="item">
      <img src="resources/images/15.jpg" alt="">
    </div>
    
    <div class="item">
      <img src="resources/images/16.jpg" alt="">
    </div>
    
    <div class="item">
      <img src="resources/images/17.jpg" alt="">
    </div>
    
    <div class="item">
      <img src="resources/images/18.jpg" alt="">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>   

<div class="container-fluid">
<br><br>
<center>
<div myhead id="mystique"style="position:absolute;width: 100%;text-align: center;font-size:35px;font-style:italic;font-family:webregular;color:purple;"><b>Trending</b><com style="top:1%;font-size:15px;text-align: center;font-style:italic;color:black;font-family:georgia;">@Mystique</com>
 </center>
  <div class="row">
  <center>
    <div class="col-sm-4">
    
    <div class="row">
    <div class="col-sm-12" >
    
   <img src="resources/images/3.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
       <center>
        <h2>Make up</h2>
        </center>
    </div>
    </div>
    
    </div>
    
 <div class="col-sm-4" >
    <div class="row">
    <div class="col-sm-12" >
         <img src="resources/images/hair.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
     <center>
        <h2>Skin</h2>
        </center>
    
    </div>
    </div>
  
    
    </div>
    <div class="col-sm-4" >
    <div class="row">
    <div class="col-sm-12" >
        <img src="resources/images/25.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236">
        <center>
        <h2>Hair</h2>
        </center>
    </div>
    </div>
    
    </div>
    </center>
  </div>
  
</div>

<br>
<br><br><br>
<br>

<div class="container-fluid">

 <hr>
  <div class="row">
  <br>
    <div class="col-sm-4">
    <div class="row">
    <div class="col-sm-12" >
      <span class="glyphicon glyphicon-earphone" style="float:left;left:110px;top:2%;"></span> <p>Customer care </p>
      <p style="padding:15px;">Mon-Sat 9AM TO 9PM</p>
 
    </div>
    </div>
    </div>
    
    <div class="col-sm-4" >
    
    <div class="row">
    <div class="col-sm-12" >
       <p> Get special discounts on your inbox</p>
    <input type="text" class="search" placeholder="Enter your email address..   " style="padding:3px 4px;margin-top:4px;">
    <button type="button" class="btn" style="color:#660066">
      <span class="glyphicon glyphicon-envelope"></span> 
    </button>  
    </div>
    </div>
    
    </div>
    <div class="col-sm-4" >
    <div class="row">
    <div class="col-sm-12" >
        <p>Can Connect With Us On</p>
       
    </div>
    </div>
    </div>
    
  </div>
  </div>
  <hr>
  
  
  
  
  
  
  
  
 <br><br>
 <div class="container-fluid">

 
  <div class="row">
  <center>
    <div class="col-sm-4">
    
    <div class="row">
    <div class="col-sm-12" >
    
   <span class="glyphicon glyphicon-ok"></span>
      
    </div>
    </div>
    <div class="row">
    <div class="col-sm-12" >
      <h3>Get the verified information </h3>
      All the information in the website is true and verified by the administrator time to time.
      
    </div>
    </div>
    </div>
    
    <div class="col-sm-4" >
    <div class="row">
    <div class="col-sm-12" >
         <span class="glyphicon glyphicon-heart"></span>
    </div>
    </div>
    <div class="row">
    <div class="col-sm-12" >
       <h3> Find most trending </h3>
       Find the best things. Market is analysed by the professionals and gives the best things to you.  
    </div>
    </div>
    
    </div>
    <div class="col-sm-4" >
    <div class="row">
    <div class="col-sm-12" >
        <span class="glyphicon glyphicon-search"></span>
    </div>
    </div>
    <div class="row">
    <div class="col-sm-12" >
        <h3>Search your best</h3>
        You can find the most relevent things easily.
    </div>
    </div>
    </div>
    </center>
  </div>
  </div>
  
 <div class="footer " style=" height:50px; background-color:#000000; margin-top:30px;" >
 <br>
 <center>
 <span>&copy; 2016 Mystique. All Rights Reserved </span>
 </center>
 </div>
 
 
 </div>
</body>
</html>
