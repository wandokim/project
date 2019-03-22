<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SOL.GG - main</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- 커스텀 css-->
<link href="css/custom.css" rel="stylesheet">

<!-- sol logo -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#sol_logo").hide();
	    $("#sol_logo").slideDown("slow");
	});
</script>

</head>
<body>
	<!-- Topbar -->
	<jsp:include page="main_topbar.jsp" flush="true"/>
	<!-- End of Topbar -->

	<!-- Main Content -->
    <div id="content-wrapper" class="d-flex flex-column">
    
    	<!-- Begin Page Content -->
        <div class="content" style="text-align: center;">
		   	<img src="./img/sol_log2.png" alt="sol.gg 로고사진" style="margin: 5%;" id="sol_logo"/>
        
			<!-- 검색창 -->
			<div class="container-fluid">
				<div class="container">
					<form name="frm">
						<div class="form-row">
							<div class="col-12 col-md-9 mb-2 mb-md-0">
								<input type="text" id="search_nic" class="form-control form-control-lg" placeholder="게임 닉네임을 입력해주세요" onkeypress="if(event.keyCode==13) {searching();}">
								
								<!-- form 안에 input:text 하나 있으면 submit으로 자동 전환되어 안보이는 input 태그 하나 더 추가 -->
								<input type="text" style="display: none;" />
							</div>
							<div class="col-12 col-md-3">
								<button type="button" class="btn btn-block btn-lg btn-primary" onclick="searching()">Search</button>
							</div>
						</div>
					</form>
				</div>
				<!-- end content -->
			</div>
			<!-- end container -->
		</div>
        <!-- /.container-fluid -->

		<div style="height: 200px"></div>
		<jsp:include page="footer.jsp" flush="true"/>
	
	</div>
    <!-- End of Content Wrapper -->

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
  
  <!-- search js -->
  <script src="js/search.js"></script>

</body>
</html>