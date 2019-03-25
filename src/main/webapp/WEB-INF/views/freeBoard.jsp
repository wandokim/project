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
<style type="text/css">
	.table_row {
		cursor: pointer;
	}
	.table_row:hover {
		background-color: #EAEAEA;
	}
</style>
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
	        
	        <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h5 class="m-0 font-weight-bold text-primary" style="display: inline-block;">자유 게시판</h5>
              <div style="float: right;">
              
				<% 
					if(session.getAttribute("id")!=null){
				%>
              	<a href="writeFreeBoard" class="btn btn-primary btn-icon-split">
					<span class="text">글쓰기</span>
				</a>
				<%
					}
				%>
				
              </div>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                  <thead>
                    <tr>
                    	<th width="10%">게시판 No</th>
						<th>제목</th>
						<th width="15%">작성자</th>
						<th width="15%">작성일</th>
						<th width="10%">좋아요</th>
						<th width="10%">조회수</th>
                    </tr>
                  </thead>
                  <tbody>
					<c:forEach var="list" items="${list }">
						<tr class="table_row">
							<td>${list.b_no }</td>
							<td>${list.title }</td>	
							<td>${list.writer }</td>
							<td>${list.write_date }</td>				
							<td>${list.b_like }</td>
							<td>${list.b_hits }</td>
						</tr>
					</c:forEach>
                  </tbody>
                </table>
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
<script type="text/javascript">
	$(".table_row").click(function(){
		var tr = $(this);
		var td = tr.children();
		
		var b_no = td.eq(0).text();
		console.log(b_no);
		
		location.href = "detail_board?b_no="+b_no;
	});
</script>
</body>
</html>