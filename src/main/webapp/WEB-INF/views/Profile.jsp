<%@page import="java.util.List"%>
<%@page import="sol.desk.wjjst.dto.UserDTO"%>
<%@page import="sol.desk.wjjst.dao.UserDaoImpl"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Profile.jsp</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- 커스텀 css-->
<link href="css/custom.css" rel="stylesheet">
  
<style type="text/css">
  #checkPwd{
     color : red;
     font-size: 12px;
     padding-left: 50px;
  }  
  /*  .col-lg-5{
     margin: left;
     top: 50px;
  } */
</style>
  

</head>
<body>

	<!-- Topbar -->
	<jsp:include page="main_topbar.jsp" flush="true"/>
	<!-- End of Topbar -->


  <div class="container">
  

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
        <%
        	Random rnd = new Random();
        	int num = rnd.nextInt(10)+1;              
           
        %>
          <div class="col-lg-7 d-none d-lg-block">
             <img src="./img/ModifyBackground/modi<%=num %>.jpg" alt="ModifyBackground_img" />
          </div>
			<div class="col-lg-5">
			
				<div class="p-5" style="text-align: center;">
	            	<div style="background-color: white;border-radius: 20px; padding: 15px; opacity: 0.95">
	              <div class="text-center">
	                <h1 class="h4 text-gray-900 mb-4">Profile</h1>
	              </div>
	              <form class="user" name="frm">
	                <div class="form-group row">
	                  <div class="col-sm-12">
	         		    <input class="form-control form-control-user" name="nicname" id="nicname" value="${dto.nicname }" >        	
	                  </div>	                
	                </div>
	                <div class="form-group">
	                  <input class="form-control form-control-user" name="email" id="email" value="${dto.email } ">
	                </div>
	                
	                <!-- <div class="form-group row">
	                  <div class="col-sm-12">
	                    <input class="form-control form-control-user" name="pwd" placeholder="Password">
	                  </div>
	                  </div>
	                  <div class="form-group row">	                  
	                  <div class="col-sm-12">
	                    <input class="form-control form-control-user" name="pwd_check" placeholder="Repeat Password" onkeyup="checkPwd()">
	                    <div id="checkPwd"></div>
	                  </div>
	                </div> -->
	                
	                	<a href="Modify" class="btn btn-primary btn-user btn-block">Modify Account</a>
	                <hr>
	              </form>
	              
	              <div class="text-center">
	                <a class="small" href="forgot-password.html">Forgot Password?</a>
	              </div>
	              <div class="text-center">
	                <a class="small" href="login.html">Already have an account? Login!</a>
	              </div>
	            </div>
	          </div>
			</div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
  
  <!-- search js -->
  <script src="js/search.js"></script>

</body>

</html>