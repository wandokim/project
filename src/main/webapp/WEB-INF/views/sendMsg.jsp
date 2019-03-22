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
<title>Send Massage</title>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#sender").click(function(){
			var nic = document.getElementById("nic").value;
			var title = document.getElementById("title").value;
			var contents = document.getElementById("contents").value;
			
			if(nic == "" || nic == null){
				alert("닉네임을 입력해주세요");
				document.getElementById("nic").focus();
			}else if(title == "" || title == null){
				alert("제목을 입력해주세요");
				document.getElementById("title").focus();
			}else if(contents == "" || contents == null){
				alert("내용을 입력해주세요");
				document.getElementById("contents").focus();
			}else{
				document.frm.action = "sendMsgOk"
				document.frm.method = "post";
				document.frm.submit();
			}
		});
	});
</script>
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
	        
	        <form name="frm">
	        <!-- Begin Page Content -->
		        <div class="container-fluid">
		        	<div class="row justify-content-center">
		        		<div class="col-lg-6 d-none d-lg-block">
							<h4>받는사람</h4>
							<input type="text" name="nic" class="form-control form-control-user" placeholder="닉네임을 입력해주세요" id="nic"/>
							<br />
							<h4>제목</h4>
							<input type="text" name="title" class="form-control form-control-user" placeholder="제목을 입력해주세요" id="title"/>
							<br />
							<h4>내용</h4>
							<textarea name="contents" id="contents" cols="30" rows="10" class="form-control form-control-user"></textarea><br />				
							<!-- <a href="sendMsgOk"><input type="submit" value="전송버튼" /></a> -->
							<a href="main" class="btn btn-primary btn-icon-split" style="margin-top: 10px;">
								<span class="text">Back Home</span>
							</a>
							<div style="float: right;" id="sender">
								<div class="btn btn-success btn-circle btn-lg">
									<i class="fas fa-check"></i>
								</div>
							</div>
						</div>
					</div>	         
		        </div>
	        </form>
		</div>
      </div>
     </div>

   </div>
       

     
      <!-- End of Main Content -->

      <!-- Footer -->
      <jsp:include page="footer.jsp" flush="true" />  

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