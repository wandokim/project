<%@page import="sol.desk.wjjst.MasterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.io.Console"%>
<%@page import="sol.desk.wjjst.ChallengerINFO"%>
<%@page import="java.util.HashMap"%>
<%@page import="sol.desk.wjjst.SplitKey"%>
<%@page import="sol.desk.wjjst.FindID"%>
<%@page import="sol.desk.wjjst.SplitStr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="sidebar.jsp" flush="true"/>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
        <!-- Topbar -->
        <jsp:include page="topbar.jsp" flush="true" />

		<div class="container-fluid">
	    <div class="row justify-content-center">
				<div class="col-lg-6 d-none d-lg-block">
		        	<div class="card shadow mb-4">
			            <div class="card-header py-3">
			              <h5 class="m-0 font-weight-bold text-primary" style="display: inline-block;">게시물</h5>
							<div style="float: right;">
								<img src="./img/pointer.png" alt="조회수" height="25px"/>
								<span>${dto.b_hits }</span>
							</div>
							<%
								// 나의 user_no와 게시글의 writer_no가 같을 경우 표시
								if(session.getAttribute("id") != null){
							%>
							<div style="float: right; margin-right: 15px;">
								<a href="bLike?b_no=${dto.b_no }"><img src="./img/like1.png" alt="좋아요" height="20px"/></a>
								<span>${dto.b_like }</span>
							</div>
							<%
								}else{
									
							%>
							<div style="float: right; margin-right: 15px;">
								<img src="./img/like1.png" alt="좋아요" height="20px"/>
								<span>${dto.b_like }</span>
							</div>
							<%
								}
							%>
			            </div>
			            <div class="card-body">
							<div class="d-none d-lg-block">
								<h6>제목</h6>
								<input type="text" class="form-control form-control-user" disabled="disabled" value="${dto.b_no }"/>
								<br />
								<div style="display: inline-block; width: 48%;">
									<h6>작성자</h6>
									<input type="text" class="form-control form-control-user" disabled="disabled" value="${dto.writer }"/>
								</div>
								<div style="float: right; width: 48%;">
									<h6>작성일</h6>
									<input type="text" class="form-control form-control-user" disabled="disabled" value="${dto.write_date }"/>
								</div>
								<br />
								<br />
								<textarea cols="25" rows="10" class="form-control form-control-user" disabled="disabled">${dto.b_contents}</textarea>
								<br />
								<hr />
								<%
									// 나의 user_no와 게시글의 writer_no가 같을 경우 표시
									if(session.getAttribute("id") != null){
										if(Integer.parseInt(session.getAttribute("user_no").toString())==Integer.parseInt(session.getAttribute("checkUserNo").toString())){
								%>
											<a href="deleteOk" class="btn btn-danger btn-icon-split" style="margin-top: 10px;">
												<span class="text">삭제</span>
											</a>
								<%
										}
									}
								%>
								<div style="float: right;" id="sender">
									<a href="freeBoard" class="btn btn-primary btn-icon-split" style="margin-top: 10px;">
										<span class="text">목록</span>
									</a>
								</div>
							</div>
						</div>
		            </div>
	            </div>
          </div>
				     
		</div>
      </div>
      <!-- Footer -->
      <jsp:include page="footer.jsp" flush="true" />  
     </div>

   </div>
      <!-- End of Main Content -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
	<jsp:include page="logout_model.jsp" flush="true" />

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script> 	
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
	
</body>
</html>