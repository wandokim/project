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

</head>
<body>
	<!-- Topbar -->
	<jsp:include page="main_topbar.jsp" flush="true"/>
	<!-- End of Topbar -->

	<!-- 검색창 -->
	<div class="container">
		<div>
			<form name="frm">
				<div class="form-row">
					<div class="col-12 col-md-9 mb-2 mb-md-0">
						<input type="text" id="search_nic" class="form-control form-control-lg" placeholder="게임 닉네임을 입력해주세요">
						
						<!-- form 안에 input:text 하나 있으면 submit으로 자동 전환되어 안보이는 input 태그 하나 더 추가 -->
						<input type="text" style="display: none;" />
					</div>
					<div class="col-12 col-md-3">
						<button type="button" class="btn btn-block btn-lg btn-primary" onclick="searching()">Search</button>
					</div>
				</div>
			</form>
		</div>
	</div>

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