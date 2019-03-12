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

<script>
      $(document).ready(function(){  
         Kakao.init("9f67eda204cf901f642f04194cebb46d");
         
         /* profile 보기 */
         function getKakaotalkUserProfile(){
            Kakao.API.request({
               url: '/v1/user/me',
               success: function(res) {
                  $("#kakao-profile").append(res.properties.nickname);
                  $("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,"alt":res.properties.nickname+"님의 프로필 사진"}));
                  console.log(res.id); // 콘솔 로그에 id 정보 출력(id는 res안에 있으므로 res.id로 불러옴)
                  console.log(res.kaccount_email);
                  //res.properties.nickname로도 접근가능
                  console.log(authObj.access_token); //콘솔 로그에 토큰값 출력
                  
               },
               fail: function(error) {
                  console.log(error);
               }
            });
         }
         
         /* login 버튼 생성 후 token 받기 */
         function createKakaotalkLogin(){
            $("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
            var loginBtn = $("#kakao_login");
            
            loginBtn.click(function(){
               Kakao.Auth.login({
                  persistAccessToken: true,
                  persistRefreshToken: true,
                  success: function(authObj) {
                     getKakaotalkUserProfile();
                     createKakaotalkLogout();
                  },
                  fail: function(err) {
                     console.log(err);
                  }
               });
            });
            $("#kakao-logged-group").prepend(loginBtn)
         }
         
         /* 로그인 처리 후 로그아웃 버튼 생성 */
         function createKakaotalkLogout(){
            $("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
            var logoutBtn = $("<a/>",{"class":"kakao-logout-btn","text":"로그아웃"});
            logoutBtn.click(function(){
               Kakao.Auth.logout();
               createKakaotalkLogin();
               $("#kakao-profile").text("");
            });
            $("#kakao-logged-group").prepend(logoutBtn);
         }
         if(Kakao.Auth.getRefreshToken()!=undefined&&Kakao.Auth.getRefreshToken().replace(/ /gi,"")!=""){
            createKakaotalkLogout();
            getKakaotalkUserProfile();
         }else{
            createKakaotalkLogin();
         }
      });
   </script>

<title>SOL.GG - 로그인</title>
</head>
<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome to SOL.GG!</h1>
                  </div>
                  <form class="user">
                    <div class="form-group">
                      <input type="email" class="form-control form-control-user" id="Email" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="Password" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <a href="index.html" class="btn btn-primary btn-user btn-block">
                      Login
                    </a>
                    <hr>
                    
                    <!-- google 로그인 api -->
                    <!-- 
                    <a href="index.html" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                     -->
                    <!-- facebook 로그인 api -->
                    <!-- 
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>
                     -->
                    
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
  	var naver_id_login = new naver_id_login("E4Kacvcpgf0DGI3fXor2", "http://localhost:9090/sol/callback.jsp");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:9090/sol/login.jsp");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
</script>

</body>
</html>