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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RankInfo</title>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
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
        
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Tables</h1>
          <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>순위</th>
                      <th>소환사명</th>
                      <th>티어</th>
                      <th>LP</th>
                      <th>승률</th>
                      <th>모스트챔프</th>
                    </tr>
                  </thead>
                  <tbody>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String tier ="CHALLENGER";
		String leaguePoints = "";
		String summonerName = "";
		String wins ="";
		String losses ="";
		
		ChallengerINFO c = new ChallengerINFO();
		System.out.println(c.challengerinfo());
		System.out.println("---------------");
		SplitStr str = new SplitStr();	
		
		List<String> result = new ArrayList<String>();
		
		
		
		String[] cham = str.split(c.challengerinfo());
		for(int i=0; i<300; i++){
			summonerName = cham[5+(10*i)];
			leaguePoints = cham[(5+(10*i))+1];
			wins = cham[(5+(10*i))+3];
			losses = cham[(5+(10*i))+4];					
			 
			result.add(summonerName); 
			result.add(leaguePoints);
			result.add(wins);
			result.add(losses);
		}
		
		//System.out.println(result);
		String[] r_result = result.toArray(new String[result.size()]);
		List kim = new ArrayList();		
		for(int i =0; i<=1199; i++) {			
			String wan= r_result[i].substring(r_result[i].indexOf(":")+1,r_result[i].length());
			kim.add(wan);
		}
				
		String[] r_result1 = (String[]) kim.toArray(new String[kim.size()]);	
		for(int i=0; i<100; i++) {
			System.out.println(r_result1[i]);
		}
		
		
		List list = new ArrayList();

		for(int i=0; i<300; i++) {
			String a1 = r_result1[0+(4*i)]+",";
			String b1 = r_result1[1+(4*i)]+",";
			String c1 = r_result1[2+(4*i)]+",";
			String d1 = r_result1[3+(4*i)];	
			
			String x = a1+b1+c1+d1;
			list.add(x);
		}

		System.out.println(list);
		String[] wando = (String[]) list.toArray(new String[list.size()]);
		System.out.println("---------");
		for(int i=0; i<wando.length; i++) {
			System.out.println(wando[i]);
		}
		String[] f;
		for(int i=0; i<wando.length; i++) {
			f = wando[i].split(",");
	%>
			<tr>
                <td><%=i+1 %></td>
                <td><%=f[0] %></td>
                <td>Challenger</td>
                <td><%=Integer.parseInt(f[1])%></td>
                <td><%=f[2] %>승 <%=f[3] %>패</td>
                <td>챔피언 숙련도</td>
            </tr>
	<%
			
		}
	%>
	</tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <jsp:include page="footer.jsp" flush="true" />

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

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