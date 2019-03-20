<%@page import="sol.desk.wjjst.RandomChamp"%>
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
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- 커스텀 css-->
<link href="css/custom.css" rel="stylesheet">

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- 네이버 로그인 api -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- 카카오 로그인 api -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="js/kakao.js"></script>
   
<!-- 로그인 버튼 -->
<script type="text/javascript">
	$(function(){
		$('#loginOk').click(function(){
			var id = document.getElementById("Id").value;
			var password = document.getElementById("Password").value;
			
			if(id == "" || id == null){
				alert("ID 를 입력해주세요");
				document.getElementById("Id").focus();
			}else if(password == "" || password == null){
				alert("Password 를 입력해주세요");
				document.getElementById("Password").focus();
			}else{
				document.frm.action = "loginOk?id="+id+"&password="+password;
				document.frm.method = "post";
				document.frm.submit();
			}
		});
	});
</script>

<title>SOL.GG - 로그인</title>
</head>
<body>

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9" >

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-5 d-none d-lg-block">
              
              	<%
              		RandomChamp rc = new RandomChamp();
              		String champ = rc.randomChap();
              	%>
              	<img src="./img/loading/<%=champ %>_0.jpg" alt="login_img" style="display: block;margin: 15px auto; height: 95%;border-radius: 10px;" />
              </div>
              <div class="col-lg-7">
                <div class="p-5">
                  <div class="text-center">
                    <a href="main" style="text-decoration: none;"><h1 class="h4 text-gray-900 mb-4">Welcome to <img src="./img/sol_logo.png" alt="sol_logo" style="height: 70px;"/></h1></a>
                  </div>
                  <form class="user" name="frm">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="Id" placeholder="Enter Your ID" autofocus="autofocus">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="Password" placeholder="Enter Your Password">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <input type="button" class="btn btn-primary btn-user btn-block" id="loginOk" value="Login">
                    <hr>
                    
                    <!-- 카카오 아이디로 로그인 api -->
                  	<div id="kakao_login" class="btn btn-kakao btn-user btn-block">
                    	<span style="font-style: Sans-Serif; font-weight: 1000; font-size: 16px;">K |</span> Login with Kakao
                  	</div>
                    <div id="kakao-login-btn" ></div>
                  	<div id="kakao-logged-group">
                  	</div>
               		<div id="kakao-profile"></div>
                    
                    <!-- 네이버 아이디로 로그인 api -->
                    <div id="naver_id_login" style="display: none;"></div>
                    <!-- 네아로 이미지 div -->
                    <div class="btn btn-naver btn-user btn-block" onclick="document.getElementById('naver_id_login_anchor').click();">
                    	<span style="font-style: Sans-Serif; font-weight: 1000; font-size: 16px;">N |</span> Login with Naver
                    </div>
                    
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

<!-- 네이버 아이디 로그인 스크립트 -->
<script type="text/javascript">
  	var naver_id_login = new naver_id_login("E4Kacvcpgf0DGI3fXor2", "http://localhost:9090/wjjst/callback");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:9090/wjjst/login.gg");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
</script>

</body>
</html>