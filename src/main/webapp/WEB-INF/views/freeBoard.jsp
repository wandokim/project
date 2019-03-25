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
<title>Send Message</title>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  <%
  	
  %>
  
  
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
	        <h2>넘어감</h2>
			
			<table border="1">			
				<tr>
					<th>제목</th>
					<th>작성일</th>
					<th>작성자</th>
					<th>좋아요</th>
					<th>조회수</th>
					<th>상세보기</th>
				</tr>
				
				<c:forEach var="wando" items="${wando }">
					<tr>
						<td>${wando.title }</td>
						<td>${wando.write_date }</td>
						<td>${wando.writer }</td>
						<td>${wando.b_like }</td>
						<td>${wando.b_hits }</td>
						<td><a href="detail_board"><input type="button" value="상세보기" /></a></td>
					</tr>
				</c:forEach>
				
			</table>
			<a href="writeFreeBoard"><input type="button" value="글쓰기" /></a>
	     
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