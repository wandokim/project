<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- 커스텀 css-->
<link href="css/custom.css" rel="stylesheet">

<title>Profile.jsp</title>
<style type="text/css">
  #checkPwd{
  	color : red;
  	font-size: 12px;
  	padding-left: 50px;
  }
  
</style>
  
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

</head>
<body>
<div class="col-lg-4">
				<div class="p-5" style="text-align: center;">
	            	<div style="background-color: white;border-radius: 20px; padding: 15px; opacity: 0.95">
	              <div class="text-center">
	                <h1 class="h4 text-gray-900 mb-4">Modify an Account!</h1>
	              </div>
	              <form class="user" name="frm" action="registeOk">
	                <div class="form-group row">
	                  <div class="col-sm-6 mb-3 mb-sm-0">
	                    <input type="text" class="form-control form-control-user" name="nicname" placeholder="닉네임">
	                  </div>
	                  <div class="col-sm-6">
	                    <input type="text" class="form-control form-control-user" name="id" placeholder="아이디">
	                  </div>
	                </div>
	                <div class="form-group">
	                  <input type="email" class="form-control form-control-user" name="email" placeholder="이메일">
	                </div>
	                <div class="form-group row">
	                  <div class="col-sm-6 mb-3 mb-sm-0">
	                    <input type="password" class="form-control form-control-user" name="pwd" placeholder="Password">
	                  </div>
	                  <div class="col-sm-6">
	                    <input type="password" class="form-control form-control-user" name="pwd_check" placeholder="Repeat Password" onkeyup="checkPwd()">
	                    <div id="checkPwd"></div>
	                  </div>
	                </div>
	                <input type="submit" href="registeOk" class="btn btn-primary btn-user btn-block" value="Register Account">
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
</body>
</html>