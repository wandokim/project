<%@page import="sol.desk.wjjst.LotationChamp"%>
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
<title>Champions' Info</title>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  
<style type="text/css">
	img {
		margin: 5px;
		cursor: pointer;
	}
	h4 {
		margin: 0;
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
        
        <%
        	LotationChamp l = new LotationChamp();
			SplitStr s = new SplitStr();		
			String[] wan = s.split(l.lotationchamp());        
        %>        
        <!-- Begin Page Content -->
        <div class="container-fluid">
        
        	<!-- 금주 로테이션 Champions -->
        	<div class="row">
       			<div class="card shadow mb-4" style="text-align: center;">
       				<div class="card-header py-3">
       					<h4>Free Champions For This Week</h4>
       				</div>
       				<div class="card-body">
			        	<a href="teemo"><img src="./img/champion_number/17.png" alt="티모 링크" /></a>			
       				<%
       					for(int i=1;i<=13;i++){
       						
       				%>
			        	<img src="./img/champion_number/<%=wan[i] %>.png" alt="로테이션 챔<%=i %>" />			
       				
       				<%
       					}
       				%>
       				</div>
				</div>
			</div>
			
			<!-- 전체 Champions -->
        	<div class="row">
       			<div class="card shadow mb-4" style="text-align: center;">
       				<div class="card-header py-3">
       					<h4>All Champions</h4>
       				</div>
       				<div class="card-body">
						<c:forEach var="img" items="${imgList }">
	       					<div style="display: inline-block;">
					        	<img src="./img/champion/${img }.png" alt="${img }" />
					        	<br />
					        	<span>${img }</span>
		       				</div>
						</c:forEach>
       				</div>
				</div>
			</div>
         </div>
            </div>
            
      <!-- Footer -->
      <jsp:include page="footer.jsp" flush="true" />
            
          </div>

        </div>
        <!-- /.container-fluid -->     


  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
	<jsp:include page="logout_model.jsp" flush="true"/>

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