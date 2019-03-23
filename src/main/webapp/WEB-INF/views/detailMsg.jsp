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
<title>Read Message</title>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#replyMsg").click(function(){
			var nic = document.getElementById("nic").value;
			var title = document.getElementById("title").value;
			var contents = document.getElementById("contents").value;
			
			console.log(nic);
			console.log(title);
			console.log(contents);
			
			if(title == "" || title == null){
				alert("제목을 입력해주세요");
				document.getElementById("title").focus();
			}else if(contents == "" || contents == null){
				alert("내용을 입력해주세요");
				document.getElementById("contents").focus();
			}else{
				location.href = "sendMsgOk?nic="+nic+"&title="+title+"&contents="+contents;
			}
		});
	});
</script>
</head>
<body>
<%
	String nic = request.getParameter("nic");
%>		  
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
        
        <!-- Begin Page Content -->
        <div class="container-fluid">
        
        	<!-- Msg Detail -->
			<div class="row justify-content-center">
				<div class="col-lg-6 d-none d-lg-block">
		        	<div class="card shadow mb-4">
			            <div class="card-header py-3">
			              <h5 class="m-0 font-weight-bold text-primary" style="display: inline-block;">Messages Detail</h5>
			              <div style="float: right;">
			              	<a href="checkMsg" class="btn btn-info btn-icon-split" data-toggle="modal" data-target="#replyMsgModel">
								<span class="text">답장</span>
							</a>
			              </div>
			            </div>
			            <div class="card-body">
							<div class="d-none d-lg-block">
								<c:forEach var="list" items="${list }">
									<h4>보낸 사람</h4>
									<input type="text" class="form-control form-control-user" disabled="disabled" value="<%=nic %>"/>
									<br />
									<h4>제목</h4>
									<input type="text" class="form-control form-control-user" disabled="disabled" value="${list.m_title }"/>
									<br />
									<h4>내용</h4>
									<textarea cols="25" rows="10" class="form-control form-control-user" disabled="disabled">${list.m_contents }</textarea>
									<br />				
								</c:forEach>
								<a href="detailMsg" class="btn btn-danger btn-icon-split" style="margin-top: 10px;">
									<span class="text">삭제</span>
								</a>
								<div style="float: right;" id="sender">
									<a href="checkMsg" class="btn btn-primary btn-icon-split" style="margin-top: 10px;">
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
  
	<!-- replyMsg Modal-->
	<div class="modal fade" id="replyMsgModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">답장하기</h5>
	        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">×</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<div class="d-none d-lg-block">
				<h4>받는 사람</h4>
				<input type="text" name="nic" class="form-control form-control-user" id="nic" disabled="disabled" value="<%=nic %>"/>
				<br />
				<h4>제목</h4>
				<input type="text" name="title" class="form-control form-control-user" id="title"/>
				<br />
				<h4>내용</h4>
				<textarea name="contents" id="contents" cols="25" rows="10" class="form-control form-control-user"></textarea>
			</div>
	      </div>
	      <div class="modal-footer">
	        <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
	        <div class="btn btn-primary" id="replyMsg">보내기</div>
	      </div>
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
  <script src="vendor/datatables/jquery.dataTables.min.js"></script> 	
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
	
</body>
</html>