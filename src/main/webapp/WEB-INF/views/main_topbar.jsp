<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Topbar -->
<nav class="navbar navbar-expand bg-white topbar mb-4 shadow navbar-fixed-top">

	<!-- Nav logo -->
	<ul class="navbar-nav">
		<li class="nav-item">
			<img src="./img/sol_log.png" alt="sol.gg로고" style="height: 60px;" id="sol_img"/>
		</li>
	</ul>
	
	
	<%
	// 로그인 여부
	if( session.getAttribute("id") == null)
	{
	%>
	
	<ul class="navbar-nav ml-auto">
		<li>
			<input class="btn btn-default" type="button" value="로그인" onclick="login()">
		</li>
		<li>
			<input class="btn btn-default" type="button" value="회원가입" onclick="register()">
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
				<!-- Message Center -->
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
		    <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=session.getAttribute("id") %></span>
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
	        <a class="dropdown-item" href="#">
	          <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
	          Activity Log
	        </a>
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

	<!-- Logout Modal-->
	<jsp:include page="logout_model.jsp" flush="true"/>
	
</nav>
<!-- End of Topbar -->