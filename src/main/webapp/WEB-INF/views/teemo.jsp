<%@page import="sol.desk.wjjst.SplitStr"%>
<%@page import="sol.desk.wjjst.LotationChamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
	img {
		margin: 5px;
	}
	.img {
		cursor: pointer;
	}
	h4 {
		margin: 0;
	}
	p {
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
			        	<a href="teemo"><img src="./img/champion_number/17.png" alt="티모" class="img"/></a>			
       				<%
       					for(int i=1;i<=13;i++){
       						
       				%>
			        	<img src="./img/champion_number/<%=wan[i] %>.png" alt="로테이션 챔<%=i %>" class="img" />			
       				
       				<%
       					}
       				%>
       				</div>
				</div>
			</div>
			
			<!-- 전체 Champions -->
        	<div class="row">
	        	<div class="col-lg-12">
	       			<div class="card shadow mb-4" style="text-align: center;">
	       				<div class="card-header py-3">
	       					<h4>Champion's Info</h4>
	       				</div>
	       				<div class="card-body">
	       					<!-- 사진 / 이름 / 정보 -->
	       					<div>
								<div>
									<img src="./img/champion_number/17.png" alt="티모" />
								</div>
								<div style="display: inline-block;">
									<h2>Teemo : 티모</h2>
									<p>티모는 버섯을 사용하여 효과적으로 미니언을 사냥할 수 있습니다</p>
									<p>드래곤이나 내셔 남작 근처 등 지도 주요 위치에 버섯을 설치하면 적들이 이들 거대 몬스터를 사냥할 때를 파악할 수 있습니다</p>
								</div>
							</div>
							
							<hr />
							<!-- 스킬 -->
							<div>
								<table>
									<tr>
										<td><img src="./img/skill/Teemo_P.png" alt="패시브스킬" /></td>
										<td style="width: 17%;"><p style="display: inline-block;">패시브 스킬</p></td>
										<td><p>티모가 가방에 있던 버섯을 사용하여 폭발성 독 함정을 던집니다. 적이 함정을 밟으면 독 구름이 퍼져나와 몇 초에 걸쳐 적의 이동 속도를 늦추고 피해를 입힙니다. 버섯 위에 새 버섯을 던지면 튕겨나며 사거리가 늘어납니다</p></td>
									</tr>
									<tr>
										<td><img src="./img/skill/BlindingDart.png" alt="q스킬" /></td>
										<td style="width: 17%;"><p>Q 스킬</p></td>
										<td><p>강력한 독으로 적의 시야를 가리고 피해를 입힙니다. 지속 시간 동안 대상을 실명시킵니다</p></td>
									</tr>
									<tr>
										<td><img src="./img/skill/MoveQuick.png" alt="w스킬" /></td>
										<td style="width: 17%;"><p>W 스킬</p></td>
										<td><p>티모의 이동 속도가 증가합니다. 포탑이나 적 챔피언에게 공격받으면 효과가 중단됩니다. 티모는 짧은 시간 공격 당하지 않으면 다시 이동 속도 증가 효과를 얻을 수 있습니다</p></td>
									</tr>
									<tr>
										<td><img src="./img/skill/TeemoRCast.png" alt="r스킬" /></td>
										<td style="width: 17%;"><p>R 스킬</p></td>
										<td><p>티모가 가방에 있던 버섯을 사용하여 폭발성 독 함정을 던집니다. 적이 함정을 밟으면 독 구름이 퍼져나와 몇 초에 걸쳐 적의 이동 속도를 늦추고 피해를 입힙니다. 버섯 위에 새 버섯을 던지면 튕겨나며 사거리가 늘어납니다</p></td>
									</tr>
								</table>
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