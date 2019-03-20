<%@page import="org.springframework.ui.Model"%>
<%@page import="sol.desk.wjjst.User_AllChampINFO"%>
<%@page import="sol.desk.wjjst.SplitKey"%>
<%@page import="java.util.HashMap"%>
<%@page import="sol.desk.wjjst.SplitStr"%>
<%@page import="sol.desk.wjjst.Rankinfo"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="sol.desk.wjjst.FindID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SOL.GG - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<script type="text/javascript">

</script>

</head>
<body id="page-top">



  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="sidebar.jsp" flush="true"/>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
      
      <div>
		<table>
			<c:forEach var="i" items="${list }">
				<tr class="dd">
					<td class="detail">${i.id } </td>
					<td class="detail">${i.email } </td>
					<td class="detail">${i.nicname } </td>
					<td class="detail">${i.join_date } </td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4">
					<input type="button" value="추가하기" id="add"/>
				</td>
			</tr>
		</table>
      </div>

        <!-- Topbar -->
        <jsp:include page="topbar.jsp" flush="true"/>
        
      </div>
    </div>
  </div>
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
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>
  
  <!-- search js -->
  <script src="js/search.js"></script>

</body>
</html>