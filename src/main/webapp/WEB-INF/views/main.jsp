<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SOL.GG - main</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">


</head>
<body>
	<!-- Topbar -->
	<nav class="navbar navbar-expand bg-white topbar mb-4 shadow navbar-fixed-top">

		<!-- Nav logo -->
		<ul class="navbar-nav">
			<li class="nav-item">
				<img src="./img/sol_log.PNG" alt="sol.gg로고" style="height: 60px;"/>
			</li>
		</ul>
		
		
		<%
		// 로그인 여부
		if( session.getAttribute("id") == null)
		{
		%>
		
		<ul class="navbar-nav ml-auto">
			<li>
				<a href="login">
					<div>로그인</div>
				</a>
			</li>
			<li>
				<a href="register">
					<div>회원가입</div>
				</a>
			</li>
		</ul>
		
		<%
        }
        else
        {
		%>
		<!-- Topbar Navbar -->
		<ul class="navbar-nav ml-auto">
			<!-- Nav Item - Messages -->
			<li class="nav-item dropdown no-arrow mx-1">
				<a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fas fa-envelope fa-fw"></i>
					
					<!-- 읽지않은 메세지 숫자 카운트해서 호출 -->
					<!-- Counter - Messages -->
					<span class="badge badge-danger badge-counter">7</span>
				</a>
				
				<!-- massages 클릭 이벤트 -->
				<!-- Dropdown - Messages -->
				<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
					<h6 class="dropdown-header">
					Message Center
					</h6>
					
					<!-- 친구와의 메세지 목록 반복문으로 출력해야함 -->
					<a class="dropdown-item d-flex align-items-center" href="#">
						<div class="dropdown-list-image mr-3">
							<!-- 친구의 img (default 있어야함) -->
							<img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
							<!-- 해당 친구 현재 로그인 중인지 확인 -->
							<div class="status-indicator bg-success"></div>
						</div>
						<div class="font-weight-bold">
							<div class="text-truncate">친구의 가장 최근 메세지 호출</div>
							<div class="small text-gray-500">친구이름호출 · 메세지가 온 시간으로 부터 현재까지 시간</div>
						</div>
					</a>
					
		    <!-- <a class="dropdown-item d-flex align-items-center" href="#">
		      <div class="dropdown-list-image mr-3">
		        <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
		        <div class="status-indicator"></div>
		      </div>
		      <div>
		        <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
		        <div class="small text-gray-500">Jae Chun · 1d</div>
		      </div>
		    </a>
		    <a class="dropdown-item d-flex align-items-center" href="#">
		      <div class="dropdown-list-image mr-3">
		        <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
		        <div class="status-indicator bg-warning"></div>
		      </div>
		      <div>
		        <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
		        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
		      </div>
		    </a>
		    <a class="dropdown-item d-flex align-items-center" href="#">
		      <div class="dropdown-list-image mr-3">
		        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
		        <div class="status-indicator bg-success"></div>
		      </div>
		      <div>
		        <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
		        <div class="small text-gray-500">Chicken the Dog · 2w</div>
		      </div>
		    </a> -->
		    
					<!-- 모든 message 호출 -->
					<a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
				</div>
			</li>
	
			<div class="topbar-divider d-none d-sm-block"></div>
	
			<!-- Nav Item - User Information -->
			<li class="nav-item dropdown no-arrow">
			  <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    <span class="mr-2 d-none d-lg-inline text-gray-600 small">유저 이름</span>
			    <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
			  </a>
		  		<!-- Dropdown - User Information -->
		      <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
		        <a class="dropdown-item" href="#">
		          <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
		         	프로필
		        </a>
		        <a class="dropdown-item" href="#">
		          <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
					세팅
		        </a>
		        <!-- <a class="dropdown-item" href="#">
		          <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
		          Activity Log
		        </a> -->
		        <div class="dropdown-divider"></div>
		        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
		          <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
					로그아웃
		        </a>
		      </div>
		    </li>
		</ul>
		
		<%
		}
		%>
	
	</nav>
	<!-- End of Topbar -->
	
	
	<!-- 검색창 -->
	<div class="container">
		<div>
			<form>
				<div class="form-row">
					<div class="col-12 col-md-9 mb-2 mb-md-0">
						<input type="text" class="form-control form-control-lg" placeholder="게임 닉네임을 입력해주세요">
					</div>
					<div class="col-12 col-md-3">
						<button type="submit" class="btn btn-block btn-lg btn-primary">Search</button>
					</div>
				</div>
			</form>
		</div>
	</div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>

</body>
</html>