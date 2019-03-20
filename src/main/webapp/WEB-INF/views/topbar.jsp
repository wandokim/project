<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Sidebar Toggle (Topbar) -->
	<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
	  <i class="fa fa-bars"></i>
	</button>

	<!-- Topbar Search -->
	<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
	  <div class="input-group">
	    <input type="text" class="form-control bg-light border-0 small" placeholder="게임 닉네임을 입력해주세요" aria-label="Search" aria-describedby="basic-addon2" id="search_nic">
	    <div class="input-group-append">
	    
	      <button class="btn btn-primary" id="search_nic" type="button" onclick="searching()">
	        <i class="fas fa-search fa-sm"></i>
	      </button>
	      
	    </div>
	  </div>
	</form>

	<!-- Topbar Navbar -->
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
	        <a class="dropdown-item" href="Profile">
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
	<!-- search js -->
  <script src="js/search.js"></script>

</nav>