<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp"></c:import>
<title>Mystique</title>


<style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 30px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 80%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: white;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #660066;
    color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #660066;
    color: white;
}
</style>

</head>

<body>
<c:import url="head.jsp"></c:import>


<!-- Trigger/Open The Modal -->
<button id="myBtn"></button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">×</span>
      <h2><center>Sign Up</center></h2>
    </div>
    <div class="modal-body">
     <form:form action="insertuser" method="post" modelAttribute="newuser">
                      
                             <div style="margin-bottom: 25px" class="input-group">
                                         <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input id="signup-name" type="text" class="form-control" name="Username" placeholder="Enter your name" style="width:25%">
                               </div>
                     <div style="margin-bottom: 25px" class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> 
                                             <input id="signup-email" type="email" class="form-control" name="Email" placeholder="Enter your email"style="width:25%">
                                </div>
                    <div style="margin-bottom: 25px" class="input-group">
                                     <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
                                     <input id="Password" type="password" class="form-control" name="Password" placeholder="Enter your password"style="width:25%">
                               </div>
                    <div style="margin-bottom: 25px" class="input-group">
                                     <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
                                     <input id="Cpassword" type="password" class="form-control" name="CPassword" placeholder="Re-enter your password"style="width:25%">
                                </div>
                   <div style="margin-bottom: 25px" class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                                       <textarea class="form-control" rows="3" id="Address" placeholder="Enter your Address" name ="Address"style="width:25%"></textarea>
                                 </div>
                   <div style="margin-bottom: 25px" class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span> 
                                      <input id="Phone" type="number" class="form-control" name="Phone" placeholder="Enter your Phone Number"style="width:25%"/>
                                  </div>
                   <div style="margin-top: 10px" class="form-group">
<!-- Button -->
                   
                                         <input type="submit"	class="btn" value="Save"style="width:25%"/>
					                     
                                 </div>
                     </form:form>
    </div>
    <div class="modal-footer">
      <h6><center>Sign Up & earn 2000 Reward points!</center></h6>
       <center>
          <span>&copy; 2016 Mystique. All Rights Reserved </span>
      </center>
    </div>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>



</body>
</html>

