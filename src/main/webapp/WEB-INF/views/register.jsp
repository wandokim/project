<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>register.jsp</title>

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
  
</style>
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- password 일치여부 보여주기 -->
<script type="text/javascript">
  	var checkFirst = false;
  	var lastKeyword = '';
  	var loopSendKeyword = false;
  	
  	function checkPwd(){
  		var f1 = document.forms[0];
  		var pw1 = f1.pwd.value;
  		var pw2 = f1.pwd_check.value;
  		if(pw1!=pw2){
  			document.getElementById('checkPwd').style.color = "red";
  			document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요";
  		}else{
  		document.getElementById('checkPwd').style.color = "black";
  		document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다.";
  		}
  	}
</script>

<!-- 유효성 검사 -->
<!-- <script type="text/javascript">
$(function(){
	var id = document.getElementById("id").value;
	var nicname = document.getElementById("nicname").value;
	var email = document.getElementById("email").value;
	var pw1 = document.getElementById("pwd").value;
 	var pw2 = document.getElementById("pwd_check").value;

	$("#register").click(function(){
		if(id==null || id==""){
			alert("ID를 입력해주세요");
			f1.id.focus();
		}else if(nicname==null || nicname==""){
			alert("닉네임을 입력해주세요");
			f1.nicname.focus();
		}else if(email==null || email==""){
			alert("이메일을 입력해주세요");
			f1.email.focus();
		}else if(pw1==null || pw1==""){
			alert("비밀번호를 입력해주세요");
			f1.pwd.focus();
		}else if(pw2==null || pw2==""){
			alert("비밀번호 확인을 입력해주세요");
			f1.pwd_check.focus();
		}else if(pw1 != pw2){
			alert("비밀번호가 같지 않습니다\n다시 시도해주세요");
			f1.pwd.focus();
		}else{
			document.frm.action = "registeOk";
			document.frm.method = "post";
			document.frm.submit();
		}
	});
});
</script> -->

<!-- div 효과 -->
<script type="text/javascript">
	$(document).ready(function(){
		$(".row").hide();
	    $(".row").slideDown("slow");
	});
</script>

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
          	<img src="./img/reg_background/full<%=num %>.jpg" alt="reg_backgound_img" />
          </div>
			<div class="col-lg-5">
				<div class="p-5" style="text-align: center;">
	            	<div style="background-color: white;border-radius: 20px; padding: 15px; opacity: 0.95">
	              <div class="text-center">
	                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
	              </div>
	              <form class="user" name="frm" action="registeOk">
	                <div class="form-group row">
	                  <div class="col-sm-6 mb-3 mb-sm-0">
	                    <input type="text" class="form-control form-control-user" name="id" placeholder="아이디" id="id">
	                  </div>
	                  <div class="col-sm-6">
	                    <input type="text" class="form-control form-control-user" name="nicname" placeholder="닉네임" id="nicname">
	                  </div>
	                </div>
	                <div class="form-group">
	                  <input type="email" class="form-control form-control-user" name="email" placeholder="이메일" id="email">
	                </div>
	                <div class="form-group row">
	                  <div class="col-sm-6 mb-3 mb-sm-0">
	                    <input type="password" class="form-control form-control-user" name="pwd" placeholder="Password" id="pwd">
	                  </div>
	                  <div class="col-sm-6">
	                    <input type="password" class="form-control form-control-user" name="pwd_check" placeholder="Repeat Password" onkeyup="checkPwd()" id="pwd_check">
	                    <div id="checkPwd" style="padding: 10px 0 0 0"></div>
	                  </div>
	                </div>
	                <input type="submit" class="btn btn-primary btn-user btn-block" value="Register Account" id="register">
	                <hr>
	              </form>
	              
	              <div class="text-center">
	                <a class="small" href="#">Forgot Password?</a>
	              </div>
	              <div class="text-center">
	                <a class="small" href="login">Already have an account? Login!</a>
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
