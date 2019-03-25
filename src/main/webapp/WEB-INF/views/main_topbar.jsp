<%@page import="sol.desk.wjjst.dto.MsgDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Topbar -->
<nav class="navbar navbar-expand bg-white topbar mb-4 shadow navbar-fixed-top">

	<!-- Nav logo -->
	<ul class="navbar-nav">
		<li class="nav-item">
			<img src="./img/sol_logo.png" alt="sol.gg로고" style="height: 60px;" id="sol_img"/>
		</li>
	</ul>
	<ul class="navbar-nav ml-auto">
		<li>
			<a href="lotation" class="btn btn-danger btn-icon-split"><span class="text">Champion Info</span></a>
			<a href="RankINFO" class="btn btn-danger btn-icon-split"><span class="text">Ranking Info</span></a>
			<a href="freeBoard" class="btn btn-danger btn-icon-split"><span class="text">User Board</span></a>
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
    	   ArrayList<MsgDTO> list = (ArrayList) session.getAttribute("msgList");
    	   
	%>
	
	<!-- Topbar Navbar -->
	<ul class="navbar-nav ml-auto">
		<!-- Nav Item - Messages -->
		<li class="nav-item dropdown no-arrow mx-1">
			<a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-envelope fa-fw"></i>
				
				<!-- 읽지않은 메세지 숫자 카운트해서 호출 -->
				<!-- Counter - Messages -->
				<span class="badge badge-danger badge-counter"><%=list.size() %></span>
			</a>
			
			<!-- massages 클릭 이벤트 -->
			<!-- Dropdown - Messages -->
			<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
				<h6 class="dropdown-header">
				<!-- Message Center -->
				</h6>
				
				<%
					for(MsgDTO dto : list){
				%>
					<a class="dropdown-item d-flex align-items-center" href="detailMsg?nic=<%=dto.getNicname() %>&num=<%=dto.getM_no() %>">
						<div class="dropdown-list-image mr-3">
							<!-- 친구의 img (default 있어야함) -->
							<img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
						</div>
						<div class="font-weight-bold">
							<div class="text-truncate"><%=dto.getM_title() %></div>
							<div class="small text-gray-500"><%=dto.getNicname() %> · <%=dto.getWrite_date() %></div>
						</div>
					</a>

	    		<%
					}
	    		%>
				<!-- 모든 message 호출 -->
				<a class="dropdown-item text-center small text-gray-500" href="checkMsg">Read More Messages</a>
			</div>
		</li>
	
		<div class="topbar-divider d-none d-sm-block"></div>
	
		<!-- Nav Item - User Information -->
		<li class="nav-item dropdown no-arrow">
		  <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=session.getAttribute("nicname") %></span>
		    <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
		  </a>
	  		<!-- Dropdown - User Information -->
	      <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
	        <a class="dropdown-item" href="Profile">
	          <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
	         	프로필
	        </a>
	        <a class="dropdown-item" href="sendMsg">
	          <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
	          	메세지 전송
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